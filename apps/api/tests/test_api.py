from fastapi.testclient import TestClient

from app.main import app

client = TestClient(app)


def test_health() -> None:
    response = client.get("/health")
    assert response.status_code == 200
    assert response.json() == {"status": "ok"}
    assert response.headers["x-content-type-options"] == "nosniff"


def test_status_contains_only_public_technical_data() -> None:
    response = client.get("/api/v1/status")
    assert response.status_code == 200
    assert response.json() == {
        "status": "ok",
        "api_version": "v1",
        "phase": "technical-foundation",
        "supported_locales": ["de", "en", "tr"],
    }


def test_locales() -> None:
    response = client.get("/api/v1/locales")
    assert response.status_code == 200
    assert response.json()["fallback"] == "en"
    assert [item["code"] for item in response.json()["locales"]] == ["de", "en", "tr"]


def test_error_response_hides_debug_details() -> None:
    response = client.get("/api/v1/status", params={"unexpected": "value"})
    assert response.status_code == 200
    missing = client.get("/api/v1/does-not-exist")
    assert missing.status_code == 404
    assert missing.json() == {
        "error": {"code": "not_found", "message": "The requested resource was not found."}
    }
    assert "traceback" not in missing.text.lower()

from typing import Literal

from pydantic import BaseModel, ConfigDict


class StrictModel(BaseModel):
    model_config = ConfigDict(extra="forbid")


class HealthResponse(StrictModel):
    status: Literal["ok"] = "ok"


class PlatformStatus(StrictModel):
    status: Literal["ok"] = "ok"
    api_version: Literal["v1"] = "v1"
    phase: Literal["technical-foundation"] = "technical-foundation"
    supported_locales: tuple[Literal["de", "en", "tr"], ...] = ("de", "en", "tr")


class SupportedLocale(StrictModel):
    code: Literal["de", "en", "tr"]
    technical_reference: bool = False


class LocalesResponse(StrictModel):
    fallback: Literal["en"] = "en"
    locales: tuple[SupportedLocale, ...]


class ErrorDetail(StrictModel):
    code: str
    message: str


class ApiError(StrictModel):
    error: ErrorDetail

from collections.abc import Awaitable, Callable

from fastapi import FastAPI, Request
from fastapi.exceptions import RequestValidationError
from fastapi.middleware.cors import CORSMiddleware
from fastapi.responses import JSONResponse
from starlette.exceptions import HTTPException as StarletteHTTPException
from starlette.middleware.base import BaseHTTPMiddleware
from starlette.responses import Response

from .config import get_settings
from .models import (
    ApiError,
    ErrorDetail,
    HealthResponse,
    LocalesResponse,
    PlatformStatus,
    SupportedLocale,
)

settings = get_settings()
app = FastAPI(title="HTP Public API", version="1.0.0", debug=settings.debug)
app.add_middleware(
    CORSMiddleware,
    allow_origins=list(settings.allowed_origins),
    allow_credentials=False,
    allow_methods=["GET"],
    allow_headers=["Accept", "Content-Type"],
)


class SecurityHeadersMiddleware(BaseHTTPMiddleware):
    async def dispatch(
        self, request: Request, call_next: Callable[[Request], Awaitable[Response]]
    ) -> Response:
        response = await call_next(request)
        response.headers["X-Content-Type-Options"] = "nosniff"
        response.headers["X-Frame-Options"] = "DENY"
        response.headers["Referrer-Policy"] = "no-referrer"
        return response


app.add_middleware(SecurityHeadersMiddleware)


@app.exception_handler(RequestValidationError)
async def validation_error(_: Request, __: RequestValidationError) -> JSONResponse:
    payload = ApiError(error=ErrorDetail(code="invalid_request", message="The request is invalid."))
    return JSONResponse(status_code=422, content=payload.model_dump())


@app.exception_handler(StarletteHTTPException)
async def http_error(_: Request, exception: StarletteHTTPException) -> JSONResponse:
    code = "not_found" if exception.status_code == 404 else "request_error"
    payload = ApiError(
        error=ErrorDetail(
            code=code,
            message="The requested resource was not found."
            if exception.status_code == 404
            else "The request could not be completed.",
        )
    )
    return JSONResponse(status_code=exception.status_code, content=payload.model_dump())


@app.get("/health", response_model=HealthResponse, tags=["technical"])
async def health() -> HealthResponse:
    return HealthResponse()


@app.get("/api/v1/status", response_model=PlatformStatus, tags=["public"])
async def status() -> PlatformStatus:
    return PlatformStatus()


@app.get("/api/v1/locales", response_model=LocalesResponse, tags=["public"])
async def locales() -> LocalesResponse:
    return LocalesResponse(
        locales=(
            SupportedLocale(code="de"),
            SupportedLocale(code="en", technical_reference=True),
            SupportedLocale(code="tr"),
        )
    )

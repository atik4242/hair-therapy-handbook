from functools import lru_cache
from typing import Literal

from pydantic import field_validator
from pydantic_settings import BaseSettings, SettingsConfigDict


class Settings(BaseSettings):
    model_config = SettingsConfigDict(env_prefix="HTP_", env_file=".env", extra="ignore")

    environment: Literal["development", "test", "production"] = "development"
    debug: bool = False
    allowed_origins: tuple[str, ...] = ("http://localhost:5173",)

    @field_validator("allowed_origins", mode="before")
    @classmethod
    def parse_origins(cls, value: object) -> object:
        if isinstance(value, str):
            return tuple(item.strip() for item in value.split(",") if item.strip())
        return value

    @field_validator("allowed_origins")
    @classmethod
    def reject_production_wildcard(cls, value: tuple[str, ...]) -> tuple[str, ...]:
        if "*" in value:
            raise ValueError("Wildcard CORS origins are not permitted")
        return value


@lru_cache
def get_settings() -> Settings:
    return Settings()

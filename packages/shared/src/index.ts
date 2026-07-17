export type SupportedLocale = "de" | "en" | "tr";

export interface PlatformStatus {
  status: "ok";
  apiVersion: "v1";
  phase: "technical-foundation";
  supportedLocales: SupportedLocale[];
}

export interface ApiError {
  error: { code: string; message: string; requestId?: string };
}

from fastapi import FastAPI
from pydantic import BaseModel

app = FastAPI(
    title="ZYRA MASTER HUB ∞",
    version="1.0.0"
)


class HealthResponse(BaseModel):
    status: str
    service: str
    version: str


@app.get("/")
async def root():
    return {
        "service": "ZYRA MASTER HUB ∞",
        "status": "online",
        "version": "1.0.0"
    }


@app.get("/health", response_model=HealthResponse)
async def health():
    return {
        "status": "healthy",
        "service": "ZYRA MASTER HUB ∞",
        "version": "1.0.0"
    }


@app.get("/ready")
async def ready():
    return {
        "status": "ready"
    }

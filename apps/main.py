from fastapi import FastAPI
import os

app = FastAPI(title="DevOps Showcase")

@app.get("/")
def root():
    return {
        "message": "Hello from DevOps Showcase",
        "version": os.getenv("APP_VERSION", "1.0"),
        "environment": os.getenv("APP_ENV", "dev")
    }

@app.get("/health")
def health():
    return {"status": "healthy"}

@app.get("/info")
def info():
    return {
        "app": "devops-showcase",
        "features": ["kubernetes", "terraform", "github-actions", "docker"]
    }
from fastapi import FastAPI
import uvicorn


app = FastAPI()

@app.get("/")
async def main_function():
    return {"message": "Hello World!"}


if __name__ == "__main__":
    uvicorn.run("main:app", host="0.0.0.0", port=5555, reload=True, debug=True, proxy_headers=True)

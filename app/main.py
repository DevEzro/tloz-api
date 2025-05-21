from fastapi import FastAPI

app = FastAPI()

@app.get("/")
async def greeting():
    return {"message": """🤗 Hi! Hope you enjoy this TLOZ® API to play with! If you like this repository, please consider giving it a star ⭐!"""}
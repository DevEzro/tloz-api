from fastapi import FastAPI, Depends
from sqlmodel import SQLModel, Session

from app.database import engine, get_session
from app.models import Character
from app.schemas import CharacterCreate, CharacterRead
from app.crud import get_characters, create_character

app = FastAPI()

@app.on_event("startup")
def crear_tablas():
    SQLModel.metadata.create_all(engine)

@app.get("/")
async def greeting():
    return {"message": """🤗 Hi! Hope you enjoy this TLOZ® API to play with! If you like this repository, please consider giving it a star ⭐!"""}
from fastapi import FastAPI, Depends
from sqlmodel import Session

from app.database import get_session
from app.models import Character
from app.schemas import CharacterRead
from app.crud import get_characters

from sqlmodel import SQLModel
from app.database import engine

app = FastAPI()

@app.get("/greeting")
async def greeting():
    return {"message": "🤗 Hi! Hope you enjoy this TLOZ® API to play with! If you like this repository, please consider giving it a star ⭐!"}

@app.get("/characters", response_model=list[CharacterRead])
def read_characters(session: Session = Depends(get_session)):
    characters = get_characters(session)
    print("Characters found:", characters)
    return characters


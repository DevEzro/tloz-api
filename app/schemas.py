from sqlmodel import SQLModel

class CharacterCreate(SQLModel):
    name: str
    race: str
    location: str

class CharacterRead(CharacterCreate):
    id: int

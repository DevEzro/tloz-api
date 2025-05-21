from sqlmodel import Session, select
from app.models import Character
from app.schemas import CharacterCreate

def get_characters(session: Session):
    return session.exec(select(Character)).all()

def create_character(character: CharacterCreate, session: Session):
    db_char = Character.from_orm(character)
    session.add(db_char)
    session.commit()
    session.refresh(db_char)
    return db_char

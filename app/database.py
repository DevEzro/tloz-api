from sqlmodel import create_engine, Session

DATABASE_URL = "postgresql://ganon:tr1f0rc3@postgres:5432/hyrule"
engine = create_engine(DATABASE_URL, echo=True)

def get_session():
    with Session(engine) as session:
        yield session

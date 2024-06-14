from sqlalchemy import create_engine
from sqlalchemy.orm import Session, sessionmaker



SQLALCHEMY_DATABAE_URL = 'sqlite:///db.sqlite3'
engine = create_engine(SQLALCHEMY_DATABAE_URL)
SessionLocal: Session = sessionmaker(bind=engine, autoflush=False, autocommit=False)


def get_db():
    db = SessionLocal()
    try:
        yield db 
    finally:
        db.close()
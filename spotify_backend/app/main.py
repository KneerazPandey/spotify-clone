from fastapi import FastAPI 
from db.base import Base
from db.connection import engine
from routes.auth import auth_router

app = FastAPI()
Base.metadata.create_all(bind=engine)

app.include_router(auth_router, prefix='/api')
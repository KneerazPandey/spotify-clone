from fastapi import APIRouter, Depends, HTTPException, status
from sqlalchemy.orm import Session
from db.connection import get_db
from models.user import User 
from schemas.user import UserRegistrationDto, UserResponseDto
import bcrypt


auth_router = APIRouter(prefix='/auth', tags=['Authentication - Users'])


@auth_router.post('/register', status_code=status.HTTP_201_CREATED, response_model=UserResponseDto)
def register_user(register_dto: UserRegistrationDto, db: Session = Depends(get_db)):
    existing_user = db.query(User).filter(User.email == register_dto.email).first()
    if existing_user:
        raise HTTPException(
            status_code=status.HTTP_400_BAD_REQUEST,
            detail="User with this email already exists"
        )

    hash_password = bcrypt.hashpw(
        password=register_dto.password.encode(),
        salt=bcrypt.gensalt(rounds=10)
    )
    register_dto.password = hash_password

    user = User(**register_dto.model_dump())
    db.add(user)
    db.commit()
    db.refresh(user)

    return user 


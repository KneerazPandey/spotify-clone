from pydantic import BaseModel, EmailStr
from datetime import datetime


class UserRegistrationDto(BaseModel):
    name: str 
    email: EmailStr
    password: str  
    
    class Config:
        orm_mode = True 
    

class UserResponseDto(BaseModel):
    name: str 
    email: str 
    created: datetime
    
    class Config:
        orm_mode = True
    
    
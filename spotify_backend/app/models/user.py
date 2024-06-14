from db.base import Base
from sqlalchemy import Column
from sqlalchemy.sql.sqltypes import String, TIMESTAMP, LargeBinary
import uuid
from datetime import datetime



class User(Base):
    __tablename__ = 'users'
    
    id = Column(String, primary_key=True, index=True, default=str(uuid.uuid4()))
    name = Column(String, nullable=False)
    email = Column(String, nullable=False, unique=True, index=True)
    password = Column(LargeBinary, nullable=False)
    created = Column(TIMESTAMP(timezone=True), default=datetime.now)
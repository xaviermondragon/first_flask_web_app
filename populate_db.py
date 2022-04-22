from app import db
db.create_all()
from models import Task
from datetime import datetime

tasks = [
    Task(title="Practice Oud", date=datetime.utcnow()),
    Task(title="Dance Forró", date=datetime.utcnow()),
    Task(title="Learn Python", date=datetime.utcnow())
]

for task in tasks:
    db.session.add(task)
db.session.commit()

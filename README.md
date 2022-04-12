sudo apt-get install python3-tk
pip3 install virtualenv
virtualenv env
source env/bin/activate
pip3 install flask flask-sqlalchemy flask_wtf wtforms

python3
from models import db
db.create_all()
from models import Task
from datetime import datetime
t = Task(title="Practice Oud", date=datetime.utcnow())
t
db.session.add(t)
db.session.commit()
Task.query.all()
exit()

python3 app.py
http://localhost:5000/
deactivate
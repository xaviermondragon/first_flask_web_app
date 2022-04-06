pip3 install virtualenv
virtualenv env
source env/bin/activate
pip3 install flask flask-sqlalchemy

python3 app.py
http://localhost:5000/
deactivate
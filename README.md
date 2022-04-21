# To run locally:

## Preparation
- sudo apt-get install python3-tk
- pip3 install virtualenv

## Run and stop
```
virtualenv venv
source env/bin/activate
pip install -r requirements.txt
python3 populate_db.py
python3 app.py http://localhost:5000/
ctrl + C
deactivate
```


# To create an docker image and run the corresponding container
```
docker build --tag first_flask_web_app .
docker images
docker run -p 5000:5000 -d first_flask_web_app
```
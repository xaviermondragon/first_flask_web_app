#!/bin/bash

exec python ./populate_db.py &
exec python -m flask run --host=0.0.0.0
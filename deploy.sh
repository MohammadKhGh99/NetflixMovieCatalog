#!/bin/bash

kill -9 "$(sudo lsof -t -i :8080)"

python3 app.py &
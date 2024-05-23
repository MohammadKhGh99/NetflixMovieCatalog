#!/bin/bash

# removing key, scp want to copy it again in each run
rm -f mykey.pem
# kill the process that hold 8080 port
kill -9 "$(sudo lsof -t -i :8080)"
# run the app
python3 app.py &
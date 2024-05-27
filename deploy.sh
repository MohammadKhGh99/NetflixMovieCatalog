#!/bin/bash

# removing key, scp want to copy it again in each run
rm -f mykey.pem
# kill the process that hold 8080 port
PID=$(sudo lsof -t -i :8080)
if [ "$PID" != "" ]; then
  kill -9 "$(sudo lsof -t -i :8080)"
fi
# run the app
nohup python3 app.py > /dev/null 2>&1 &

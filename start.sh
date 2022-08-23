#!/bin/bash
app="app.py"
docker build -t ${app} .
docker run -d -p 8888:8888 -p 8080:5000 \
  --name=${app} \
  -v $PWD:/app ${app}
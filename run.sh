#!/bin/bash
docker build -t "alexzhxin/teamsyncbuilt" .
docker run -t -i -p 8000:8000 -p 80:80 alexzhxin/teamsyncbuilt

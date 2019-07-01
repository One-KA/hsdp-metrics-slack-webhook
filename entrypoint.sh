#!/bin/sh

if [ -z "$PORT" ]; then
    PORT=8080
fi

exec uwsgi \
    --master \
    --processes 4 \
    --threads 8 \
    --chdir ./application \
    --http :$PORT \
    --wsgi-file app.py 2>&1

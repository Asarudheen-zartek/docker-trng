#!/bin/bash

/opt/venv/bin/uvicorn main:app --host 0.0.0.0 --port 9000

# nginx -g 'daemon off;error_log /dev/stdout info;'
#!/bin/bash
docker build -t techtask .
docker run -it --rm -p 8888:8888 techtask


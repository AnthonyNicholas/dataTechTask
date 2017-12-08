# Shell Script to start tech task environment
# Author: Anthony Nicholas 8 December 2017

#!/bin/bash
docker build -t techtask .
docker run -it --rm -p 8888:8888 techtask


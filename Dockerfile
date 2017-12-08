# Tech Task Dockerfile
# Creates docker environment running jupyter notebook for tech tasks 1 & 2.
# Author: Anthony Nicholas 7 December 2017

FROM jupyter/base-notebook
RUN echo "Building Tech Task Docker Image"
RUN pip install pandas
RUN pip install beautifulsoup4
RUN cut -d: -f1 /etc/passwd
ADD --chown=jovyan:users ./tt_task1.ipynb .
ADD --chown=jovyan:users ./tt_task2.ipynb .


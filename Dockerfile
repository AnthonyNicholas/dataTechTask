


FROM jupyter/base-notebook
RUN echo "Building Tech Task Docker Image"
RUN pip install pandas
RUN pip install beautifulsoup4
RUN cut -d: -f1 /etc/passwd
ADD --chown=jovyan:users ./vib_TechTask.ipynb .
ADD --chown=jovyan:users ./TechTask_Task2.ipynb .
#CMD jupyter notebook


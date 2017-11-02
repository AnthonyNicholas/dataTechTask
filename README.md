# dataTechTask
Data Engineer Technical Task

Steps I took:

1. Find suitable docker image from dockerhub. I wanted to use basic jupiter-notepad so chose:  https://hub.docker.com/r/jupyter/base-notebook/
2. Start running with a shared volume - docker run -it -v /Users/anthonynicholas/CS_work/vib_dataTechTask:/home/jovyan/shared-folder -p 8888:8888 jupyter/base-notebook


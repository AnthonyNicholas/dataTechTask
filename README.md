# dataTechTask
Data Engineer Technical Task

Steps I took:

1. Find suitable docker image from dockerhub. I wanted to use basic jupiter-notepad so chose:  https://hub.docker.com/r/jupyter/base-notebook/
2. Start running with a shared volume - docker run -it -v /Users/anthonynicholas/CS_work/vib_dataTechTask:/home/jovyan/shared-folder -p 8888:8888 jupyter/base-notebook
3. Add pandas to the docker image (pip install pandas)
4. Commit container as new image (docker commit quizzical_easley vibtt)
5. Basic approach is to ingest data to sqlite db.  Then use sql queries in combination with pandas dataframes to process data.
6. Display of data is solely in Jupyter notebook at this stage. 


  

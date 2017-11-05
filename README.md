# dataTechTask
Data Engineer Technical Task

Steps I took:

TASK 1:

1. Found suitable docker image from dockerhub. I wanted to use basic jupiter-notepad so chose:  https://hub.docker.com/r/jupyter/base-notebook/
2. Started running with a shared volume - docker run -it -v /Users/anthonynicholas/CS_work/vib_dataTechTask:/home/jovyan/shared-folder -p 8888:8888 jupyter/base-notebook
3. Add pandas to the docker image (pip install pandas)
4. Commited container as new image (docker commit quizzical_easley vibtt)
5. Basic approach is to ingest data to sqlite db.  Then use sql queries in combination with pandas dataframes to process data.
6. Display of data is solely in Jupyter notebook at this stage. 

TASK 2:

1. Installed beautifulSoup html parsing library with pip install beautifulsoup4
2. In order to extract data from website, need to know maximum crash number to use as url parameter. Used initial python query to establish maxCrashNum was
105 in 1972.
3. Used python requests library to extract data from crash website and put in crashPages list. 
4. Used beautifulSoup to parse each page in crashPages list and extract data.  Put data into dataDict.
5. Cleanse fatality data in dataDict - extract total fatalities, discard breakup of passenger/crew numbers.
6. Produce sum of total fatalities using dataframe.sum().
7. Produce top 3 airlines with the highest rate of incidents from dataframe using dataframe.groupby()
8. 
 

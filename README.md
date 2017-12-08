# dataTechTask
Data Engineer Technical Task

## To Run ##  
1. Run using shell script: ./start_tt.sh
2. This will create and launch docker container.  You will be provided with Jupyter Notebook url.  Copy/paste this URL into your browser.
3. The two tasks are in notebooks labelled tt_task1.ipynb and tt_task2.ipynb.  Run each notebook to see the results for each question.  The results are also output into html files which are saved for reference in the docker container. 

## Steps I took to complete task ##

TASK 1:

1. Found suitable docker image from dockerhub. I wanted to use basic jupiter-notepad so chose:  https://hub.docker.com/r/jupyter/base-notebook/
2. Add pandas to the docker image (pip install pandas)
3. Basic approach is to ingest data to sqlite db.  Then use sql queries in combination with pandas dataframes to process data.
4. Display of data is both within Jupyter notebook and in html files which are saved within the docker container.
 

TASK 2:

1. Started from docker image created above.
2. Installed beautifulSoup html parsing library (pip install beautifulsoup4)
3. In order to extract data from website, need to know maximum crash number to use as url parameter.  Used initial python query to establish maxCrashNum was 105 in 1972.
4. Used python requests library to extract data from crash website and put in crashPages list. 
5. Used beautifulSoup to parse each page in crashPages list and extract data.  Put data into dataDict.
6. Cleanse fatality data in dataDict - extract total fatalities, discard breakup of passenger/crew numbers.
7. Produce sum of total fatalities using dataframe.sum().
8. Produce top 3 airlines with the highest rate of incidents from dataframe using dataframe.groupby()
9. Produce year with the highest incidents - used dataframe.groupby() 

BUILD: 

I automated the build of the docker environment using a simple shell script (start_tt.sh) combined with a dockerfile.


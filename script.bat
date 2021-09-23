@echo off
python "D:\Files\Data Engineering Course\Project\Covid-19 Analysis\data_config.py"
pause
cd c:\hadoop\sbin
start start-all
pause
start hdfs dfs -copyFromLocal "D:\Files\Data Engineering Course\Project\Covid-19 Analysis\data\countries-aggregated.csv" /data/countries-aggregated.csv
pause
start stop-all
pause
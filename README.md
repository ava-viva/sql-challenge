Employee Data Analysis
 
Background
It’s been two weeks since you were hired as a new data engineer at Pewlett Hackard (a fictional company). Your first major task is to do a research project about people whom the company employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files.
For this project, you’ll design the tables to hold the data from the CSV files, import the CSV files into a SQL database, and then answer questions about the data. That is, you’ll perform data modeling, data engineering, and data analysis, respectively.

Data Modeling
Inspect the CSV files, and then sketch an Entity Relationship Diagram of the tables. Using the QuickDBD, the tables with their primary/foreign keys are defined and also the link between each tables are created. Then, the output is export as image and even SQL file in order to use for importing the csv files.

Data Engineering
In this section, the tables are created in a specific order such that the primary keys of certain tables are used as foreign keys in the subsequent tables for reference. Then, the CSV files should be importing for relevant tables. As there was a challenge while importing the employee.csv due to the datestyle of the columns, the format of the dates are changed to YYYY-MM-DD. It can be changed in the pgAdmin using SET datestyle = 'ISO, YMD' too. Using the SELECT command, all the table could be shown in order to check for the columns and data as well.

Data Analysis
In this section, the JOIN command is utilized to aggregate the tables, allowing data from various columns of separate tables to be combined. In order to accomplish this, the command should be performed on the primary keys/references specified in the tables. The resulting outputs are then captured and inserted into the designated output folder.

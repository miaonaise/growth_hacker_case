## Dashboard for Bike Rental Services

Welcome to my first dbt project!

### About the project

This is work sample for a job application process. The task is to create a dashboard for a fictional bike rental business.

The dashboard should include the following:
1. Top 20 performing stations last week, globally, interms of rides started or duration ofrides started.
2. Most successful subscriber_type, year on year comparison(in terms of ride durationminutes)
3. Break-down of last months riders, by age / gendergroups (think bar charts)
4. Top Cities last month in terms of rides / duration

### The Data

The Data is located in three different public datasets in Google BigQuery:

bigquery-public-data:new_york_citibike.citibike_trips
bigquery-public-data:london_bicycles.cycle_hire
bigquery-public-data:austin_bikeshare.bikeshare_trips

**/!\** The london_bicycles dataset is located in the EU. The other two datasets are located in the US and the BigQuery project is chosen to process in the US as well.
You can only process tables that belong in the same multi-region (EU or US). Therefore I had to manually move the london_bicycles dataset into the local kernel in order to process it in the US. This was achieved with the help of Google's instructions.
If you want to run this dbt, think about the processing location of your BigQuery.

### Interpretation of Task
The three datasets given are individual datasets and spans at different dates. 

|                 | New york              | London                | Austin                |
| --------------- |:---------------------:|:---------------------:|:---------------------:|
| Earliest recorded trip start time | 2013-07-01 T 00:00:00 | 2015-01-04 T 00:00:00 | 2013-12-21 T 09:12:00 |
| Lastest recorded trip start time  | 2018-05-31 T 23:59:59 | 2017-06-13 T 23:59:00 | 2021-02-28 T 23:06:26 |
| Number of datapoints | 58,937,715 | 24,369,201 | 1,342,066 |

1. 
2.
3. Only
4. 

### Result
The Dashboard is displayed in Google Data Studios and can be accessed with the following link:

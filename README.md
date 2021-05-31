## Dashboard for Bike Rental Services

Welcome to my first dbt project!

### About the project

This is work sample for a job application process. The task is to create a dashboard for a fictional bike rental business.

The dashboard should include the following:
1. Top 20 performing stations last week, globally, in terms of rides started or duration of rides started.
2. Most successful subscriber_type, year on year comparison(in terms of ride duration minutes)
3. Break-down of last months riders, by age / gender groups (think bar charts)
4. Top Cities last month in terms of rides / duration

### The Data

The Data is located in three different public datasets in Google BigQuery:

- bigquery-public-data:new_york_citibike.citibike_trips
- bigquery-public-data:london_bicycles.cycle_hire
- bigquery-public-data:austin_bikeshare.bikeshare_trips

**OBS!** The london_bicycles dataset is located in the EU. The other two datasets are located in the US and the BigQuery project is chosen to process in the US as well.
You can only process tables that belong in the same multi-region (EU or US). Therefore I had to manually move the london_bicycles dataset into the local kernel in order to process it in the US. This was achieved with the help of Google's [instructions](https://cloud.google.com/bigquery/docs/locations#moving-data).
If you want to run this dbt, think about the processing location of your BigQuery.

### Interpretation of Task
The three datasets given are individual datasets and have a different span. 

|                 | New york              | London                | Austin                |
| --------------- |:---------------------:|:---------------------:|:---------------------:|
| Earliest recorded trip start time | 2013-07-01 T 00:00:00 | 2015-01-04 T 00:00:00 | 2013-12-21 T 09:12:00 |
| Lastest recorded trip start time  | 2018-05-31 T 23:59:59 | 2017-06-13 T 23:59:00 | 2021-02-28 T 23:06:26 |
| Number of datapoints | 58,937,715 | 24,369,201 | 1,342,066 |

For consistency, "Last month" will be referred to as May 2017. 

1. A week is interpreted to start on Monday and end on Sunday. Therefore "Last Week" will correspond to the week with dates from 2017-06-05 to 2017-06-11. 
Moreover, more stations than the top20 are selected in the query so that the user has the freedom to adjust how the top cities is sorted in Google Data Studios. 
2. The dataset from London does not have subscriber_type, the New York dataset has very vague subscriber types compared to the subscriber types available in the Austin dataset. 
Therefore, only the Austin dataset will be considered for this task. The years 2014-2020 are considered.
3. Only New york dataset has information on age and gender, therefore only this dataset will be conisdered. "Last month" = May 2017 and "Age" = 2017 - birth_year.
4. "Last month" = May 2017.

### Result
The Dashboard is displayed in Google Data Studios and can be accessed with the following [link](https://datastudio.google.com/reporting/c1c83570-64a7-4b04-9824-8336aff70943)

![picture of dashboard](https://github.com/miaonaise/growth_hacker_case/blob/master/dashboard-image.png)

### Comments
Around 24 hours were spent on this project. My background consists of basic SQL knowledge but no prior experience with BigQuery, dtb or Google Data Studios at the beginning of this task.

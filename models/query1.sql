WITH union_data AS(
    SELECT trip_duration, start_station_name, start_date
    FROM {{ ref('stg_london') }}
    WHERE start_date >= '2017-06-05' AND start_date <= '2017-06-11'
    UNION ALL
    SELECT trip_duration, start_station_name, start_date
    FROM {{ ref('stg_austin') }}
    WHERE sstart_date >= '2017-06-05' AND start_date <= '2017-06-11'
    UNION ALL
    SELECT trip_duration, start_station_name, start_date
    FROM {{ ref('stg_newyork') }}
    WHERE start_date >= '2017-06-05' AND start_date <= '2017-06-11'
)

SELECT start_station_name AS Start_Station_Name, COUNT(*) AS Number_of_Rides,ROUND(SUM(trip_duration)/60) AS Total_Duration_Minutes
FROM union_data
GROUP BY start_station_name
ORDER BY COUNT(*) DESC
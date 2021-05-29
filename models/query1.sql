WITH union_data AS(
    SELECT trip_duration, start_station_name, start_time
    FROM {{ ref('stg_london') }}
    WHERE start_time >= '2017-06-05' AND start_time <= '2017-06-11'
    UNION ALL
    SELECT trip_duration, start_station_name, start_time
    FROM {{ ref('stg_austin') }}
    WHERE start_time >= '2017-06-05' AND start_time <= '2017-06-11'
    UNION ALL
    SELECT trip_duration, start_station_name, start_time
    FROM {{ ref('stg_newyork') }}
    WHERE start_time >= '2017-06-05' AND start_time <= '2017-06-11'
)

SELECT start_station_name, COUNT(*) AS Number_of_rides,ROUND(SUM(trip_duration)/60) AS Total_trip_duration_minutes
FROM union_data
GROUP BY start_station_name
ORDER BY COUNT(*) DESC
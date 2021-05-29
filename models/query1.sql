SELECT trip_duration, start_station_name, start_time
FROM {{ ref('stg_london') }}
UNION ALL
SELECT trip_duration, start_station_name, start_time
FROM {{ ref('stg_austin') }}
UNION ALL
SELECT trip_duration, start_station_name, start_time
FROM {{ ref('stg_newyork') }}

WHERE EXTRACT(DATE FROM start_time) >= '2017-06-05'
    AND EXTRACT(DATE FROM start_time) <= '2017-06-11'
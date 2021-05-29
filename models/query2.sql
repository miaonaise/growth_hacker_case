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

ORDER BY start_time DESC
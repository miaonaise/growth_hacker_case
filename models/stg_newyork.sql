SELECT
    tripduration AS trip_duration,
    starttime AS start_time,
    start_station_id,
	start_station_name,
	usertype AS subscriber_type,
	birth_year,
	gender
FROM `bigquery-public-data.new_york_citibike.citibike_trips`
WHERE tripduration IS NOT NULL
ORDER BY starttime DESC
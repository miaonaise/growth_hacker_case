SELECT
    tripduration AS trip_duration,
    EXTRACT(DATE FROM starttime) AS start_date,
    start_station_id,
	start_station_name,
	usertype AS subscriber_type
FROM `bigquery-public-data.new_york_citibike.citibike_trips`
WHERE tripduration IS NOT NULL
ORDER BY starttime DESC
SELECT
    tripduration,
    starttime,
    start_station_id,
	start_station_name,
	usertype,
	birth_year,
	gender

FROM `bigquery-public-data.new_york_citibike.citibike_trips`
ORDER BY starttime DESC
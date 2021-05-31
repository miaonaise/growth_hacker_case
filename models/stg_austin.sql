SELECT
    duration_minutes * 60 AS trip_duration,
    EXTRACT(DATE FROM start_time) AS start_date,
    start_station_name,
    start_station_id,
    subscriber_type
FROM `bigquery-public-data.austin_bikeshare.bikeshare_trips`
ORDER BY start_time
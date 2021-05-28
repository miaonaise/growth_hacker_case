SELECT
    duration_minutes AS trip_duration,
    start_time,
    start_station_name,
    start_station_id,
    subscriber_type
FROM `bigquery-public-data.austin_bikeshare.bikeshare_trips`
ORDER BY start_time
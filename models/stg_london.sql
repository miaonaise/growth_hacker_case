WITH london1 AS(
    SELECT
        duration AS trip_duration,
        start_date AS start_time,
        start_station_id,
        start_station_name
    FROM `sweco-315108.copied_dataset.london1`
),

london2 AS(
    SELECT
        duration AS trip_duration,
        start_date AS start_time,
        start_station_id,
        start_station_name
    FROM `sweco-315108.copied_dataset.london2`
),

london3 AS(
    SELECT
        duration AS trip_duration,
        start_date AS start_time,
        start_station_id,
        start_station_name
    FROM `sweco-315108.copied_dataset.london3`
),

london4 AS(
    SELECT
        duration AS trip_duration,
        start_date AS start_time,
        start_station_id,
        start_station_name
    FROM `sweco-315108.copied_dataset.london4`
),

london5 AS(
    SELECT
        duration AS trip_duration,
        start_date AS start_time,
        start_station_id,
        start_station_name
    FROM `sweco-315108.copied_dataset.london5`
)

SELECT * FROM london1
UNION ALL
SELECT * FROM london2
UNION ALL
SELECT * FROM london3
UNION ALL
SELECT * FROM london4
UNION ALL
SELECT * FROM london5

ORDER BY start_time DESC

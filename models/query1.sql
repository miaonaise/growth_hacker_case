SELECT COUNT(trip_duration) 
FROM {{ ref('stg_london') }}

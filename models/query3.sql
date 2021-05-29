WITH newyork AS(
    SELECT
        birth_year,
        gender
    FROM `bigquery-public-data.new_york_citibike.citibike_trips`
    WHERE 2017-05-01 <= starttime <= 2017-05-31
    WHERE birth_year IS NOT NULL AND gender IS NOT NULL
)

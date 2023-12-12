SELECT 
  end_station_name 
FROM `bigquery-public-data.london_bicycles.cycle_hire` 
LIMIT 
  1000;

SELECT 
  COUNT(*) AS num_of_trips 
FROM 
  `bigquery-public-data.london_bicycles.cycle_hire` 
WHERE
  duration >= 12000;

SELECT
  end_station_name
FROM
  `bigquery-public-data.london_bicycles.cycle_hire` 
WHERE
  rental_id=57635395;

#1. From which station names has bike_id 1710 started?
SELECT
  DISTINCT start_station_name
FROM
  `bigquery-public-data.london_bicycles.cycle_hire`
WHERE
  bike_id = 1710;

#2. How many bike_ids have ended at "Moor Street, Soho"?
SELECT
  COUNT (DISTINCT bike_id) AS num_of_bikes
FROM
  `bigquery-public-data.london_bicycles.cycle_hire`
WHERE
end_station_name = 'Moor Street, Soho';

#3. What is the station_id for "Canton Street, Poplar"?
SELECT
  DISTINCT start_station_id 
FROM
  `bigquery-public-data.london_bicycles.cycle_hire`
WHERE
start_station_name = 'Canton Street, Poplar';

#4. What is the name of the station whose ID is 111?
SELECT
  DISTINCT start_station_name 
FROM
  `bigquery-public-data.london_bicycles.cycle_hire`
WHERE
start_station_id = 111;

#5. How many distinct bike_ids had trip durations greater than 2400 seconds (or 40 minutes)?
SELECT
  COUNT(DISTINCT bike_id) AS num_of_bike_trips
FROM
  `bigquery-public-data.london_bicycles.cycle_hire`
WHERE
  duration > 2400;
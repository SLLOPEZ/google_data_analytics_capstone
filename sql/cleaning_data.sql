#Cleaning data

#identifiyng duplicates
SELECT ride_id, COUNT(ride_id)
FROM `aerobic-cyclist-430421-s8.cyclistic_data_capstone.cyclistic_jul_2023_jun_2024`
GROUP BY ride_id
HAVING COUNT(ride_id) > 1;

#deleting duplicate ride_id's
DELETE FROM `aerobic-cyclist-430421-s8.cyclistic_data_capstone.cyclistic_jul_2023_jun_2024`
WHERE ride_id IN (
  SELECT ride_id
  FROM (
        SELECT ride_id,
         ROW_NUMBER() OVER (PARTITION BY ride_id ORDER BY ride_id) AS row_num
        FROM `aerobic-cyclist-430421-s8.cyclistic_data_capstone.cyclistic_jul_2023_jun_2024`
        ) AS table_row
    WHERE row_num > 1
);

#Create the columns for month, day,and length of ride 
#Remove rows with null values 
CREATE TABLE `aerobic-cyclist-430421-s8.cyclistic_data_capstone.cyclistic_jul_2023_jun_2024_cleaned` AS (
  SELECT 
  ride_id, 
  rideable_type,
  started_at,
  ended_at,
  ride_length_in_mins,
  CASE 
  EXTRACT(MONTH FROM started_at)
    WHEN 1 THEN 'January'
    WHEN 2 THEN 'February'
    WHEN 3 THEN 'March'
    WHEN 4 THEN 'April'
    WHEN 5 THEN 'May'      
    WHEN 6 THEN 'June'
    WHEN 7 THEN 'July'
    WHEN 8 THEN 'August'
    WHEN 9 THEN 'September'
    WHEN 10 THEN 'October'      
    WHEN 11 THEN 'November'
    WHEN 12 THEN 'December'
  END AS month,
  CASE EXTRACT(DAYOFWEEK FROM started_at)
    WHEN 1 THEN 'Sunday'
    WHEN 2 THEN 'Monday'
    WHEN 3 THEN 'Tuesday'
    WHEN 4 THEN 'Wednesday'
    WHEN 5 THEN 'Thursday'
    WHEN 6 THEN 'Friday'
    WHEN 7 THEN 'Saturday'    
  END AS day_of_week,
  start_station_name,
  start_station_id,
  end_station_name,
  end_station_id,
  start_lat,
  start_lng,
  end_lat,
  end_lng,
  member_casual,
FROM `aerobic-cyclist-430421-s8.cyclistic_data_capstone.cyclistic_jul_2023_jun_2024` AS t1
JOIN 
  (SELECT ride_id,
   TIMESTAMP_DIFF(ended_at, started_at, MINUTE) AS ride_length_in_mins
  FROM `aerobic-cyclist-430421-s8.cyclistic_data_capstone.cyclistic_jul_2023_jun_2024`) AS t2
USING(ride_id)
WHERE ride_length_in_mins > 1 AND ride_length_in_mins < 1440 AND
  start_station_name IS NOT NULL AND
  start_station_id IS NOT NULL AND
  end_station_name IS NOT NULL AND
  end_station_id IS NOT NULL AND
  start_lat IS NOT NULL AND
  start_lng IS NOT NULL AND
  end_lat IS NOT NULL AND
  end_lng IS NOT NULL
);




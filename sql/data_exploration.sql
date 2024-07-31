#data exploration

#number of columns
#13 columns
SELECT COUNT(*)
FROM `aerobic-cyclist-430421-s8.cyclistic_data_capstone.INFORMATION_SCHEMA.COLUMNS`
WHERE table_name = 'cyclistic_jul_2023_jun_2024';

#number of rows
#5734381 rows
SELECT COUNT(*)
FROM `aerobic-cyclist-430421-s8.cyclistic_data_capstone.cyclistic_jul_2023_jun_2024`;

#check if ride ids have duplicates
#duplicates for ride_id were found
SELECT count(distinct (ride_id))
FROM `aerobic-cyclist-430421-s8.cyclistic_data_capstone.cyclistic_jul_2023_jun_2024`;

#checking for null values
#start_station & start_station_id 933003 null values
#end_station & end_station_id 980556 null values
#end_lat & end_lng 7919 null values
SELECT 
COUNTIF(ride_id IS NULL) AS ride_id,
COUNTIF(rideable_type IS NULL) AS rideable_type,
COUNTIF(started_at IS NULL) AS started_at,
COUNTIF(ended_at IS NULL) AS ended_at,
COUNTIF(start_station_name IS NULL) AS start_station,
COUNTIF(start_station_id IS NULL) AS start_station_id,
COUNTIF(end_station_name IS NULL) AS end_station,
COUNTIF(end_station_id IS NULL) AS end_station_id,
COUNTIF(start_lat IS NULL) AS start_lat,
COUNTIF(start_lng IS NULL) AS start_lng,
COUNTIF(end_lat IS NULL) AS end_lat,
COUNTIF(end_lng IS NULL) AS end_lng,
COUNTIF(member_casual IS NULL) AS member_casual
FROM `aerobic-cyclist-430421-s8.cyclistic_data_capstone.cyclistic_jul_2023_jun_2024`;

#types of bikes
#there is electric, classic, and docked
SELECT rideable_type
FROM `aerobic-cyclist-430421-s8.cyclistic_data_capstone.cyclistic_jul_2023_jun_2024`
GROUP BY rideable_type;

#types of riders 
#there is casual & member
SELECT member_casual 
FROM `aerobic-cyclist-430421-s8.cyclistic_data_capstone.cyclistic_jul_2023_jun_2024`
GROUP BY member_casual;

#checking the length of the ride id's
SELECT LENGTH(ride_id) as rider_id_len
FROM `aerobic-cyclist-430421-s8.cyclistic_data_capstone.cyclistic_jul_2023_jun_2024`
GROUP BY LENGTH(ride_id);

#start station name and count 
SELECT DISTINCT start_station_name, COUNT(*) AS start_station_count
FROM `aerobic-cyclist-430421-s8.cyclistic_data_capstone.cyclistic_jul_2023_jun_2024`
GROUP BY start_station_name;

#end station name and count 
SELECT DISTINCT end_station_name, COUNT(*) AS end_station_count
FROM `aerobic-cyclist-430421-s8.cyclistic_data_capstone.cyclistic_jul_2023_jun_2024`
GROUP BY end_station_name;



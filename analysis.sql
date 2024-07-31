#average trip time
SELECT  ROUND(AVG(ride_length_in_mins), 2)
FROM `aerobic-cyclist-430421-s8.cyclistic_data_capstone.cyclistic_jul_2023_jun_2024_cleaned`;
          
#average trip time for type of rider
SELECT  ROUND(AVG(ride_length_in_mins), 2) AS average, member_casual
FROM `aerobic-cyclist-430421-s8.cyclistic_data_capstone.cyclistic_jul_2023_jun_2024_cleaned` 
GROUP BY member_casual;

#number of rides per month 
SELECT member_casual, month, COUNT(*) AS total_rides_per_month
FROM `aerobic-cyclist-430421-s8.cyclistic_data_capstone.cyclistic_jul_2023_jun_2024_cleaned`
GROUP BY member_casual, month
ORDER BY member_casual, total_rides_per_month;

#number of rides per day of the week
SELECT member_casual, day_of_week,COUNT(*) AS total_rides_per_week
FROM `aerobic-cyclist-430421-s8.cyclistic_data_capstone.cyclistic_jul_2023_jun_2024_cleaned`
GROUP BY member_casual,day_of_week
ORDER BY member_casual, total_rides_per_week;

#number of rides taken per hour
SELECT member_casual, EXTRACT(HOUR FROM started_at) AS hour_of_day, COUNT(*) AS total_trips
FROM `aerobic-cyclist-430421-s8.cyclistic_data_capstone.cyclistic_jul_2023_jun_2024_cleaned`
GROUP BY member_casual,hour_of_day
ORDER BY member_casual, total_trips;

#count of type of cycle used by rider
SELECT member_casual, rideable_type, COUNT(*) AS total_rides
FROM `aerobic-cyclist-430421-s8.cyclistic_data_capstone.cyclistic_jul_2023_jun_2024_cleaned` 
GROUP BY member_casual, rideable_type
ORDER BY member_casual;

#starting and ending location for casual riders
SELECT member_casual, start_station_name,AVG(start_lat) AS start_lat,AVG(start_lng) AS start_lng, COUNT(*) AS total_rides
FROM `aerobic-cyclist-430421-s8.cyclistic_data_capstone.cyclistic_jul_2023_jun_2024_cleaned` 
WHERE member_casual = 'casual'
GROUP BY member_casual, start_station_name;

SELECT member_casual, end_station_name,AVG(end_lat) AS end_lat, AVG(end_lng) AS end_lng, COUNT(*) AS total_rides
FROM `aerobic-cyclist-430421-s8.cyclistic_data_capstone.cyclistic_jul_2023_jun_2024_cleaned` 
WHERE member_casual = 'casual'
GROUP BY member_casual, end_station_name;

#starting and ending locations for members
SELECT member_casual, start_station_name,AVG(start_lat)AS start_lat,AVG(start_lng) AS start_lng, COUNT(*) AS total_rides
FROM `aerobic-cyclist-430421-s8.cyclistic_data_capstone.cyclistic_jul_2023_jun_2024_cleaned` 
WHERE member_casual = 'member'
GROUP BY member_casual, start_station_name;

SELECT member_casual, end_station_name,AVG(end_lat) AS end_lat, AVG(end_lng) AS end_lng, COUNT(*) AS total_rides
FROM `aerobic-cyclist-430421-s8.cyclistic_data_capstone.cyclistic_jul_2023_jun_2024_cleaned` 
WHERE member_casual = 'member'
GROUP BY member_casual, end_station_name;


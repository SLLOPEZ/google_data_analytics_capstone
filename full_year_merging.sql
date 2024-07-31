CREATE TABLE aerobic-cyclist-430421-s8.cyclistic_data_capstone.cyclistic_jul_2023_jun_2024 AS
(SELECT * FROM `aerobic-cyclist-430421-s8.cyclistic_data_capstone.jul_2023`
UNION ALL
SELECT * FROM `aerobic-cyclist-430421-s8.cyclistic_data_capstone.aug_2023`
UNION ALL
SELECT * FROM `aerobic-cyclist-430421-s8.cyclistic_data_capstone.sep_2023`
UNION ALL
SELECT * FROM `aerobic-cyclist-430421-s8.cyclistic_data_capstone.oct_2023`
UNION ALL
SELECT * FROM `aerobic-cyclist-430421-s8.cyclistic_data_capstone.nov_2023`
UNION ALL
SELECT * FROM `aerobic-cyclist-430421-s8.cyclistic_data_capstone.dec_2023`
UNION ALL
SELECT * FROM `aerobic-cyclist-430421-s8.cyclistic_data_capstone.jan_2024`
UNION ALL
SELECT * FROM `aerobic-cyclist-430421-s8.cyclistic_data_capstone.feb_2024`
UNION ALL
SELECT * FROM `aerobic-cyclist-430421-s8.cyclistic_data_capstone.mar_2024`
UNION ALL
SELECT * FROM `aerobic-cyclist-430421-s8.cyclistic_data_capstone.apr_2024`
UNION ALL
SELECT * FROM `aerobic-cyclist-430421-s8.cyclistic_data_capstone.may_2024`
UNION ALL
SELECT * FROM `aerobic-cyclist-430421-s8.cyclistic_data_capstone.jun_2024`
);

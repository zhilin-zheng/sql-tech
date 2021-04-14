-- get data set: wget -O drug200.csv https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-ML0101EN-SkillsNetwork/labs/Module%203/data/drug200.csv
SELECT * FROM drug200;
SELECT COUNT(*) as cnt, MAX(Age) as maxage, MIN(Age) as minage, AVG(Age) as avgage FROM drug200;

-- get all over the average age
DECLARE @avgage AS TINYINT;
SELECT @avgage = AVG(Age) FROM drug200;
SELECT Age FROM drug200 WHERE Age > @avgage;
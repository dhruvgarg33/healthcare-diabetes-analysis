SELECT user, host, plugin FROM mysql.user WHERE user = 'root';
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '';
FLUSH PRIVILEGES;
USE diabetes_project;
SELECT COUNT(*) FROM diabetes;
show tables;
USE diabetes_project;

SELECT 
    Outcome,
    COUNT(*) AS Total_Patients,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM diabetes), 2) AS Percentage
FROM diabetes
GROUP BY Outcome;


SELECT 
    Outcome,
    ROUND(AVG(Glucose), 2) AS Avg_Glucose,
    ROUND(AVG(BloodPressure), 2) AS Avg_BloodPressure,
    ROUND(AVG(BMI), 2) AS Avg_BMI,
    ROUND(AVG(Age), 2) AS Avg_Age
FROM diabetes
GROUP BY Outcome;

SELECT 
    AgeGroup,
    COUNT(*) AS Total,
    SUM(Outcome) AS Diabetic,
    ROUND(SUM(Outcome) * 100.0 / COUNT(*), 2) AS Diabetic_Percentage
FROM diabetes
GROUP BY AgeGroup
ORDER BY Diabetic_Percentage DESC;

SELECT 
    BMICategory,
    COUNT(*) AS Total,
    SUM(Outcome) AS Diabetic,
    ROUND(SUM(Outcome) * 100.0 / COUNT(*), 2) AS Diabetic_Percentage
FROM diabetes
GROUP BY BMICategory
ORDER BY Diabetic_Percentage DESC;

SELECT COUNT(*) AS High_Risk_Patients
FROM diabetes
WHERE Glucose > 140 
AND BMI > 30 
AND Age > 40
AND Outcome = 1;

SELECT 
    BMICategory,
    ROUND(AVG(Glucose), 2) AS Avg_Glucose,
    ROUND(AVG(BMI), 2) AS Avg_BMI
FROM diabetes
GROUP BY BMICategory
ORDER BY Avg_Glucose DESC;


SELECT * FROM diabetes;
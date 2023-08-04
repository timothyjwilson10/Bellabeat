SELECT ActivityDate, COUNT(Id) AS CountOfIds, SUM(Calories) AS TotalCaloriesBurnt
FROM dbo.daily_activity
GROUP BY ActivityDate
ORDER BY ActivityDate ASC;

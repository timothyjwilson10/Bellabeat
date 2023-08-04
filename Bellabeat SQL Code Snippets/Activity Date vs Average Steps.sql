SELECT ActivityDate, AVG(TotalSteps) AS AverageStepsPerDay
FROM dbo.daily_activity
GROUP BY ActivityDate
ORDER BY ActivityDate ASC;
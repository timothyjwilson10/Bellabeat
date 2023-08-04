SELECT Id, COUNT(Id) AS Days_Used, AVG(TotalSteps) AS AverageStepsPerDay
FROM daily_activity
GROUP BY Id
ORDER BY AverageStepsPerDay DESC;

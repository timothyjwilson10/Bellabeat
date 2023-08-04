SELECT Id, COUNT(Id) AS TotalRepresentations
FROM dbo.sleep_day
GROUP BY Id
ORDER BY TotalRepresentations DESC;

SELECT dc.Id, 
       SUM(dc.Calories) AS TotalCalories,
       SUM(ds.StepTotal) AS TotalSteps
FROM daily_calories dc
JOIN daily_steps ds ON dc.Id = ds.Id AND dc.ActivityDay = ds.ActivityDay
WHERE ds.StepTotal > 0
GROUP BY dc.Id
ORDER BY TotalCalories DESC;

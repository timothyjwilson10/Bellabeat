SELECT dc.Id, dc.ActivityDay, dc.Calories, ds.StepTotal
FROM daily_calories dc
JOIN daily_steps ds ON dc.Id = ds.Id AND dc.ActivityDay = ds.ActivityDay
WHERE ds.StepTotal > 0;

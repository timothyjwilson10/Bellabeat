SELECT
    DATEPART(HOUR, ActivityHour) AS ActivityHour,
    SUM(Calories) AS CalorieSum
FROM dbo.hourly_calories
GROUP BY DATEPART(HOUR, ActivityHour)
ORDER BY DATEPART(HOUR, ActivityHour);

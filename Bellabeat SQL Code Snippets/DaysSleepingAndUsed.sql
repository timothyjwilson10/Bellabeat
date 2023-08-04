SELECT s.Id, s.DaysWornSleeping, d.Days_Used
FROM (
    SELECT Id, COUNT(Id) AS DaysWornSleeping
    FROM dbo.sleep_day
    GROUP BY Id
) s  -- The alias "s" for the subquery calculating DaysWornSleeping
JOIN (
    SELECT Id, COUNT(Id) AS Days_Used
    FROM dbo.daily_activity
    GROUP BY Id
) d  -- The alias "d" for the subquery calculating Days_Used
ON s.Id = d.Id;

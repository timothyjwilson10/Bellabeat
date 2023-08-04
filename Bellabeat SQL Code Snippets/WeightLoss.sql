SELECT
    Id,
    MAX(WeightPounds) - MIN(WeightPounds) AS total_weight_loss
FROM weight_log
GROUP BY Id;


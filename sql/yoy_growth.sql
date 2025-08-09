WITH yearly_totals AS (
  SELECT 
    Year, 
    ROUND(SUM(`Trade Value`) / 1000000000, 2) AS total_trade_value_usd_billions
  FROM `project-portfolio-468411.crude_oil.crude_trade`
  GROUP BY Year
)
SELECT 
  Year, 
  total_trade_value_usd_billions,
  ROUND(
    ((total_trade_value_usd_billions - LAG(total_trade_value_usd_billions) OVER (ORDER BY Year)) 
    / LAG(total_trade_value_usd_billions) OVER (ORDER BY Year)) * 100, 
  2) AS yoy_growth_percentage
FROM yearly_totals
ORDER BY Year;
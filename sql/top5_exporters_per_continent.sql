SELECT 
  Continent, 
  Country, 
  ROUND(SUM(`Trade Value`) / 1000000000, 2) AS total_trade_value_usd_billions
FROM `project-portfolio-468411.crude_oil.crude_trade`
WHERE Action = 'Export'
GROUP BY Continent, Country
QUALIFY ROW_NUMBER() OVER (PARTITION BY Continent ORDER BY SUM(`Trade Value`) DESC) <= 5
ORDER BY Continent, total_trade_value_usd_billions DESC;
SELECT Country, SUM(`Trade Value`) AS total_trade_value
FROM `project-portfolio-468411.crude_oil.crude_trade`
  WHERE Action = 'Import'
  GROUP BY Country
  ORDER BY total_trade_value DESC
LIMIT 10;
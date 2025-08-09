SELECT Continent, Action, SUM(`Trade Value`) AS total_trade_value
FROM `project-portfolio-468411.crude_oil.crude_trade`
  GROUP BY Continent, Action
  ORDER BY total_trade_value DESC;
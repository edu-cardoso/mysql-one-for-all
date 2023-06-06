SELECT
  FORMAT(MIN(pl.price), 2) AS 'faturamento_minimo',
  FORMAT(MAX(pl.price), 2) AS 'faturamento_maximo',
  FORMAT(AVG(pl.price), 2) AS 'faturamento_medio',
  FORMAT(SUM(pl.price), 2) AS 'faturamento_total'
FROM users
  INNER JOIN plans ON plans.plan_id = users.plan_id;
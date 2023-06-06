SELECT
  us.user_name AS 'pessoa_usuaria',
  IF(MAX(pl.date) > '2020-12-31','Ativa','Inativa') AS 'status_pessoa_usuaria'
FROM users AS us
  INNER JOIN plays_history AS pl ON us.user_id = pl.user_id
GROUP BY
  pessoa_usuaria
ORDER BY
  pessoa_usuaria;
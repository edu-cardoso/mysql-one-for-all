SELECT
  users.user_name AS 'pessoa_usuaria',
  IF(MAX(plays_history.date) > '2020-12-31','Ativa','Inativa') AS 'status_pessoa_usuaria'
FROM users 
  INNER JOIN plays_history ON users.user_id = plays_history.user_id
GROUP BY
  pessoa_usuaria
ORDER BY
  pessoa_usuaria;
SELECT COUNT(plays_history.song_id) AS 'musicas_no_historico'
FROM users
  INNER JOIN plays_history ON plays_history.user_id = users.user_id
WHERE
  users.user_name = 'Barbara Liskov'
GROUP BY
  users.user_id;
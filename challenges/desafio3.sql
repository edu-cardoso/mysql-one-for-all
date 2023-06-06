SELECT
  us.user_name AS 'pessoa_usuaria',
  COUNT(DISTINCT pl.song_id) AS 'musicas_ouvidas',
  ROUND(SUM(s.seconds_length / 60), 2) AS 'total_minutos'
FROM users AS us
  INNER JOIN plays_history AS pl ON pl.user_id = us.user_id
  INNER JOIN songs AS s ON pl.song_id = s.song_id
GROUP BY
  pessoa_usuaria
ORDER BY
  pessoa_usuaria;
SELECT 
  s.song_name AS 'cancao', 
  COUNT(pl.song_id) AS 'reproducoes'
FROM songs AS s
  INNER JOIN plays_history AS pl ON pl.song_id = s.song_id
GROUP BY 
  s.song_name 
ORDER BY 
  reproducoes DESC, cancao
LIMIT 2;
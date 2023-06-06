SELECT 
  songs.song_name AS 'cancao', 
  COUNT(plays_history.song_id) AS 'reproducoes'
FROM songs
  INNER JOIN plays_history ON plays_history.song_id = songs.song_id
GROUP BY 
  songs.song_name 
ORDER BY 
  reproducoes DESC, cancao
LIMIT 2;
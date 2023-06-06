SELECT
  art.artist_name AS 'artista',
  alb.album_name AS 'album',
  COUNT(fol.user_id) AS 'pessoas_seguidoras'
FROM artists AS art
  INNER JOIN albums AS alb ON alb.artist_id = art.artist_id
  INNER JOIN followers AS fol ON fol.artist_id = art.artist_id
GROUP BY
  artista,
  album_name
ORDER BY
  pessoas_seguidoras DESC,
  artista,
  album;
SELECT
  artists.name 'Artista',
  COUNT(artists_followers.user_id) 'Total de seguidores'
FROM artists
  INNER JOIN artists_followers
    ON artists.id = artists_followers.artist_id
GROUP BY artists.name
HAVING COUNT(artists_followers.user_id) < 5;
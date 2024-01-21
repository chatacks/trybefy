SELECT 
  `name` 'Artista',
  GROUP_CONCAT(title) 'Álbuns'
FROM artists
  INNER JOIN albums
    ON artists.id = albums.artist_id
GROUP BY `name`
ORDER BY `name`;
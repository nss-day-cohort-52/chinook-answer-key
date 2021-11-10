SELECT t.Name as 'Track',
    al.Title as 'Album Title',
    mt.Name as 'Media Type',
    g.Name as 'Genre'
From Track t
    JOIN Album al on al.AlbumId = t.AlbumId
    Join MediaType mt on mt.MediaTypeId = t.MediaTypeId
    JOIN Genre g on g.GenreId = t.GenreId
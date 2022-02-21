select t.Name as Track, a.Title as Album, mt.Name as MediaType
from Track t
join Album a on t.AlbumId = a.AlbumId
join MediaType mt on mt.MediaTypeId = t.MediaTypeId
join Genre g on g.GenreId = t.GenreId


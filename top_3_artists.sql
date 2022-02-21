select a.Name, count(il.trackId) as invoice_track_count
from InvoiceLine il
join Track t on t.TrackId = il.TrackId
join Album ab on ab.AlbumId = t.AlbumId
join Artist a on a.ArtistId = ab.ArtistId
group by a.ArtistId
order by invoice_track_count desc
limit 3;

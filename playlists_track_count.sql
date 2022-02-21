select p.Name, count(pt.TrackId) as number_of_tracks
from Playlist p
join PlaylistTrack pt on pt.PlaylistId = p.PlaylistId
group by pt.PlaylistId;

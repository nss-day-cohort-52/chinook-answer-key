SELECT p.Name,
    COUNT(*) as TrackCount
FROM Playlist p
    Join PlaylistTrack pt on pt.PlaylistId = p.PlaylistId
GROUP BY p.Name
select Name, max(media_count) as top_media_count
from (
    select mt.Name, count(t.MediaTypeId) as media_count
    from Track t
    join MediaType mt on t.MediaTypeId = mt.MediaTypeId
    group by t.MediaTypeId
);

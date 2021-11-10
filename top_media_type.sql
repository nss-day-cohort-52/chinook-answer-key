with MediaTypeCount as (
    SELECT mt.Name,
        Count(il.InvoiceLineId) as "TrackSales"
    From InvoiceLine il
        JOIN Track t on t.TrackId = il.TrackId
        JOIN Invoice i on i.InvoiceId = il.InvoiceId
        JOIN MediaType mt on mt.MediaTypeID = t.MediaTypeId
    GROUP BY mt.Name
    ORDER BY TrackSales Desc
)
SELECT Name
FROM MediaTypeCount
WHERE TrackSales = (
        SELECT MAX(TrackSales)
        FROM MediaTypeCount
    )
with TrackCount as (
    SELECT t.Name,
        Count(il.InvoiceLineId) as "TrackSales"
    From InvoiceLine il
        JOIN Track t on t.TrackId = il.TrackId
        JOIN Invoice i on i.InvoiceId = il.InvoiceId
    WHERE strftime('%Y', i.InvoiceDate) = "2013"
    GROUP BY t.Name
)
SELECT Name
FROM TrackCount
Where TrackSales = (
        SELECT MAX(TrackSales)
        FROM TrackCount
    )
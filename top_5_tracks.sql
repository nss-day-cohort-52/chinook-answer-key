SELECT t.Name,
    Count(il.InvoiceLineId) as "TrackSales"
From InvoiceLine il
    JOIN Track t on t.TrackId = il.TrackId
    JOIN Invoice i on i.InvoiceId = il.InvoiceId
GROUP BY t.Name
ORDER BY TrackSales Desc
LIMIT 5
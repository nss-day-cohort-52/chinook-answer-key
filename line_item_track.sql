SELECT InvoiceLine.*,
    t.Name
FROM InvoiceLine
    JOIN Track t on InvoiceLine.TrackId = t.TrackId
SELECT COUNT(*)
FROM Invoice
WHERE strftime('%Y', InvoiceDate) = '2009'
    OR strftime('%Y', InvoiceDate) = '2011'
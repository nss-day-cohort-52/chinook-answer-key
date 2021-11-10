SELECT InvoiceId,
    COUNT(*) as 'Invoice Line Count'
FROM InvoiceLine
GROUP BY InvoiceId
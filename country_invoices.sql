SELECT BillingCountry,
    COUNT(*) as 'InvoiceTotal'
FROM Invoice
GROUP BY BillingCountry
SELECT FirstName || " " || LastName as "FullName",
    InvoiceId,
    InvoiceDate,
    BillingCountry
FROM Customer
    Join Invoice on Invoice.CustomerId = Customer.CustomerId
WHERE Customer.Country = "Brazil"
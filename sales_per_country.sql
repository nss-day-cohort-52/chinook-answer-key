SELECT BillingCountry,
    Count(Total) as "NumOfSales",
    SUM(Total) as "TotalSales"
FROM Invoice
GROUP BY BillingCountry
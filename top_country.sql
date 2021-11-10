with CountrySales as (
    SELECT BillingCountry,
        Count(Total) as "NumOfSales",
        SUM(Total) as "TotalSales"
    FROM Invoice
    GROUP BY BillingCountry
)
Select BillingCountry
FROM CountrySales
WHERE TotalSales = (
        SELECT MAX(TotalSales)
        FROM CountrySales
    )
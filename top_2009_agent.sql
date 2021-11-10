with ESum as (
    SELECT e.FirstName || " " || e.LastName as "FullName",
        Sum(i.total) as "TotalSales"
    From Employee e
        join Customer c on c.SupportRepId = e.EmployeeId
        join Invoice i on i.CustomerId = c.CustomerId
    Where strftime('%Y', i.InvoiceDate) = "2009"
    GROUP BY FullName
)
Select FullName
FROM ESum
Where TotalSales = (
        Select Max(TotalSales)
        FROM ESum
    )
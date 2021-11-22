SELECT i.Total,
    c.FirstName || " " || c.LastName as "Customer",
    c.Country,
    e.FirstName || " " || e.LastName as "SalesAgent"
FROM Invoice i
    JOIN Customer c on c.CustomerId = i.CustomerId
    JOIN Employee e on e.EmployeeId = c.SupportRepId
Order by c.Country COLLATE NOCASE
SELECT e.FirstName || " " || e.LastName as "FullName",
    i.InvoiceId
FROM Employee e
    JOIN Customer c on c.SupportRepId = e.EmployeeId
    JOIN Invoice i on i.CustomerId = c.CustomerId
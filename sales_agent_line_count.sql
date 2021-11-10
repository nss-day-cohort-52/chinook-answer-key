SELECT e.FirstName || " " || e.LastName as "FullName",
    Sum(i.total) as "Total Sales"
From Employee e
    join Customer c on c.SupportRepId = e.EmployeeId
    join Invoice i on i.CustomerId = c.CustomerId
GROUP BY FullName
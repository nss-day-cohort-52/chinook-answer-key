SELECT e.FirstName || " " || e.LastName as "FullName",
    Count(c.CustomerId) as "TotalCustomers"
FROM Employee e
    JOIN Customer c on e.EmployeeId = c.SupportRepId
GROUP BY FullName
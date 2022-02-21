select e.FirstName, e.LastName, count(c.CustomerId) as customer_count
from Employee e
left join Customer c on e.EmployeeId = c.SupportRepId
group by e.EmployeeId;



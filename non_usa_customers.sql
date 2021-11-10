SELECT FirstName || " " || LastName as "FullName",
    CustomerId,
    Country
From Customer
Where Country != "USA"
select i.InvoiceId, count(il.invoiceId) line_item_count
from Invoice i
join InvoiceLine il on i.InvoiceId = il.InvoiceId
group by il.InvoiceId

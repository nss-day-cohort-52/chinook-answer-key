select i.BillingCountry, count(i.BillingCountry) as sales_per_country
from Invoice i
group by i.BillingCountry;

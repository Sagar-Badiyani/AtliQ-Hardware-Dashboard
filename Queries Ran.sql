SELECT * FROM transactions;

SELECT * FROM sales.transactions limit 5;

SELECT * FROM sales.transactions where market_code="Mark001";

SELECT * FROM markets where markets_name ="Chennai";

SELECT * FROM sales.transactions where currency = "USD";

select 
transactions.*,
date.*
from transactions 
inner join date
on 
transactions.order_date = date.date
where date.year = 2020;



select 
sum(transactions.sales_amount)
from transactions 
inner join date
on 
transactions.order_date = date.date
where date.year = 2020;



select 
sum(transactions.sales_amount)
from transactions 
inner join date
on 
transactions.order_date = date.date
where date.year = 2019;



select 
sum(transactions.sales_amount)
from transactions 
inner join date
on 
transactions.order_date = date.date
where date.year = 2020 
and
market_code = "Mark001"; #Chennai



select 
distinct product_code 
from transactions 
where market_code = "Mark001";



SELECT count(*) FROM sales.transactions where sales_amount <= 0;


select distinct(currency) from transactions;


select sum(transactions.sales_amount) 
from transactions
inner join date
on transactions.order_date = date.date
where date.year = 2020;


select sum(transactions.sales_amount) 
from transactions
inner join date
on transactions.order_date = date.date
where date.year = 2020 and date.month_name = "January";


select sum(transactions.sales_amount) 
from transactions
inner join date
on transactions.order_date = date.date
where date.year = 2020 and date.month_name = "February";


select sum(transactions.sales_amount) 
from transactions
inner join date
on transactions.order_date = date.date
where date.year = 2019 and (transactions.currency = "INR\r" or transactions.currency = "USD\r");


select sum(transactions.sales_amount) 
from transactions
inner join date
on transactions.order_date = date.date
where date.year = 2020 and transactions.market_code = "Mark001";

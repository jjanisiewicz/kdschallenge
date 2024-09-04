select * from kajodatasales k 

/* unikalna liczba klientow */

select count(distinct customer_id)	as unique_customers 
from kajodatasales



/* zamowienia oplacone */
select count(order_id)		as paid_orders 
from kajodatasales 
where Status = 'Paid'


/* refunded */

select count(order_id)		as refunded_orders 
from kajodatasales 
where Status = 'Refunded'

/* failded */

select count(order_id)		as failed_orders 
from kajodatasales 
where Status = 'Failed'



/* ogolna liczba zamowien */

select count(order_id)		as total_orders
from kajodatasales 


/* miesieczna sprzedaz */

select count(order_id)			as orders 
		,monthname(date) 		as months 
from kajodatasales
where Status = 'Paid'
group by 2




/* miesieczne wyswitlenia na yt*/

select
		sum(Views)				as 	views 
		,monthname(`Date`)		as months 
from yt_views 
group by 2 


/* miesieczne wyswietlenia na blogu */

select  
	sum(Clicks)			as clicks 
	,monthname(`Date`)		as months  
from blog 
group by 2


select count(order_id) 			as Orders 
	,Description	
from kajodatasales
group by 2 

	






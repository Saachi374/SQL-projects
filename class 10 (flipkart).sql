create database flipkarts;
use flipkarts;
select * from mobiles;
select 
brand,sum(case when mrp between 0 and 9999 then 1 else 0 end) as 'price below 10k',
sum(case when mrp between 10000 and 19999 then 1 else 0 end) as 'price between 10k-20k',
sum(case when mrp between 20000 and 29999 then 1 else 0 end) as 'price between 20k-40',
sum(case when mrp >=40000 then 1 else 0 end) as 'price above 40k'
from mobiles
group by brand
order by brand;
select brand,
max(mrp-msp) as maxdiscount
from mobiles
group by brand
order by maxdiscount desc
limit 1;
select brand,avg(ratings) as avg_rating
from mobiles
group by brand
order by avg_rating desc
limit 5;
select brand,sum(No_of_reviews) as total_reviews
from mobiles
group by brand
order by total_reviews desc
limit 5;
select * 
from mobiles
where ratings > 4.5;
select * 
from mobiles
where discount > 40;
select brand,avg(ratings) as avg_rating,sum(No_of_reviews) as total_reviews
from mobiles
group by brand
order by avg_rating desc;
select * from mobiles
order by discount desc
limit 5;
select distinct name from mobiles;
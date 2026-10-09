-- OBJECTIVE TWO
-- 1. View the order_details table.
select * from order_details;
-- 2. What is the date of the table?
select * from order_details
order by order_date;

select max(order_date), min(order_date)
from order_details;
-- 3. How many orders were made within this date range?
select count(distinct order_id) from order_details;
-- 4. How many items were ordeered within this date range?
select count(item_id) from order_details;

-- 5. Which orders had the most number of items?
select order_id,count(item_id) as num_item
from order_details
group by order_id;
-- 6. How many orders had more than 12 items?
select order_id,count(item_id) as num_item
from order_details
group by order_id
having num_item >12;
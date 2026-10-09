-- 1. View the menu_items table
select * from menu_items;
-- 2.Find the nnumbers of menu of the tables
select count(*) num_iitems
 from menu_items;
-- 3. What are the least and most expensive items on the menu
select * from menu_items
order by price desc;
-- 4. How many italian disdes are on the menu
select count(*) as num_italians
 from menu_items
where category = "italian";
-- 5. What are the least and most expensiive italian dishes on the menu?
select * from menu_items
where category = "italian"
order by price desc;
-- 6. How many dishes are in each category?
select category, count(*) as num_dish
from menu_items
group by category;
-- 7. What is the average dishe price within each category
select category, avg(price)
from menu_items
group by category;
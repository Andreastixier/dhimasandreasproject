USE restaurant_db;

-- 1. view the menu_items table.
SELECT * FROM menu_items;

-- 2. Find the number of items on the menu.
SELECT count(*) FROM menu_items;

-- 3. What are the least and most expensive item on the menu?
Select * from menu_items
order by price;

Select * from menu_items
order by price desc;

-- 4. How many Italian dishes are on the menu?
Select count(*) from menu_items
where category = 'Italian';

-- 5. What are the least and most expensive italian dish on the menu?
Select * from menu_items
where category = 'Italian'
order by price;

-- 6. How many dishes are in each category?
select category, count(menu_item_id) as num_dishes
from menu_items
group by category;

-- 7. What is the average dish price within each category?
select category, avg(price) as avg_price
from menu_items
group by category;








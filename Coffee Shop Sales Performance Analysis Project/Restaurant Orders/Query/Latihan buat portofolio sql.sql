-- 1. View the order_details table.
select *
from order_details;

-- 2. What is the date range of the table?
select min(order_date), max(order_date)
from order_details;

-- 3. How many orders were made within this date range?
SELECT count(distinct order_id) from order_details;

-- 4. How many items were ordered within this date range?
Select count(*) from order_details;

-- 5. Which orders had the most number of items?
SELECT
	order_id,
    count(item_id) as num_items
FROM order_details
GROUP BY order_id
ORDER BY num_items DESC;

-- 6. How many orders had more than 12 items?
select count(*) from
(SELECT
	order_id,
    count(item_id) as num_items
FROM order_details
GROUP BY order_id
HAVING num_items > 12) as num_orders;

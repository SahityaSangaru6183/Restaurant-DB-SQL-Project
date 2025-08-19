

use restaurant_db;

-- OBJECTIVE 1: EXPLORE THE ITEMS TABLE


-- 1. View the menu_items table.
Select * from menu_items;

-- 2. Find the number of items on the menu.
Select count(*) from menu_items;

-- 3. What are the least and most expensive items on the menu?
Select * from menu_items
order by price;

Select * from menu_items
order by price DESC;

-- 4. How many Italian dishes are on the menu?
Select count(*) from menu_items
where category='Italian';

-- 5. What are the least and most expensive Italian dishes on the menu?
select *
From menu_items
where category='Italian'
order by price;

select *
From menu_items
where category='Italian'
order by price DESC;

-- 6. How many dishes are in each category?
select category, COUNT(menu_item_id) AS num_dishes
from menu_items
GROUP BY category;

-- What is the average dish price within each category?
select category, AVG(price) AS avg_price
from menu_items
GROUP BY category;






-- OBJECTIVE 2: EXPLORE THE ORDERS TABLE

-- 1. View the order_details table.
SELECT * FROM order_details;

-- 2. What is the date range of the table?
SELECT MIN(order_date),MAX(order_date) FROM order_details;

select * from order_details
order by order_date;
-- 3. How many orders were made within this date range?
SELECT COUNT(DISTINCT order_id) FROM order_details;

-- 4. How many items were orderes within this date range?
SELECT COUNT(*) FROM order_details;

-- 5.Which orders had the most number of items?
SELECT order_id, COUNT(item_id) AS num_items 
FROM order_details
GROUP BY order_id
ORDER BY num_items DESC;

-- 6. How many orders had more than 12 items?
SELECT COUNT(*) FROM

(SELECT order_id, COUNT(item_id) AS num_items 
FROM order_details
GROUP BY order_id
HAVING num_items > 12) AS num_orders;






-- OBJECTIVE 3: ANALYZE CUSTOMER BEHAVIOR

-- 1. Combine the menu_items and order_details tables into a single table.alter
SELECT * FROM menu_items;
SELECT * FROm order_details;

SELECT *
FROM order_details od LEFT JOIN menu_items mi
     ON od.item_id = mi.menu_item_id;
-- 2. What were te least and most ordered items? What categories were they in?

SELECT item_name, COUNT(order_details_id) AS num_purchases
FROM order_details od LEFT JOIN menu_items mi
     ON od.item_id = mi.menu_item_id
GROUP BY item_name
ORDER BY num_purchases DESC;

SELECT item_name, category, COUNT(order_details_id) AS num_purchases
FROM order_details od LEFT JOIN menu_items mi
     ON od.item_id = mi.menu_item_id
GROUP BY item_name, category
ORDER BY num_purchases DESC;

-- 3. What were the top 5 orders that spent the most money?

SELECT order_id, SUM(price) AS total_spend
FROM order_details od LEFT JOIN menu_items mi
     ON od.item_id = mi.menu_item_id
GROUP BY order_id
ORDER BY total_spend DESC
LIMIT 5;

-- 4. View the details of the highest spend order. What insights can you gather from the result?

SELECT category, COUNT(item_id) AS num_items
FROM order_details od LEFT JOIN menu_items mi
     ON od.item_id = mi.menu_item_id
WHERE order_id = 440
GROUP BY category;

-- INSIGHTS: Even though Italian items weren't the most popular thing on menu it seems like this highest spend ordertends to really like Italian food so maybe that's something we should be keeping on the menu
-- 5. View the details of the top 5 highest spend orders. What insights can you gather from the result?

SELECT order_id,category, COUNT(item_id) AS num_items
FROM order_details od LEFT JOIN menu_items mi
     ON od.item_id = mi.menu_item_id
WHERE order_id IN (440,2075,1957, 330, 2675)
GROUP BY order_id,category;

-- INSIGHTS: SO the Insgight that we've gathered here is that we should keep this expensive italian dishes on our menu because people seem to be ordering them a lot especially our highest spend customers
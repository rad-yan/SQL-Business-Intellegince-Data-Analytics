use bikestores;

SELECT staff_id,count(order_id) as order_qty, order_date
FROM sales.orders
GROUP BY staff_id, order_date  
ORDER BY order_qty DESC;

use BikeStores;

SELECT COUNT(c.state) AS sales_qty, c.state, store_name, sum(oi.quantity*oi.list_price*(1-oi.discount)) as total_revenue, 
FROM sales.customers c
JOIN sales.orders o ON c.customer_id = o.customer_id 
JOIN sales.order_items oi ON o.order_id = oi.order_id
JOIN sales.stores s ON s.store_id = o.store_id 
GROUP BY c.state, o.store_id, store_name  
ORDER BY o.store_id ;

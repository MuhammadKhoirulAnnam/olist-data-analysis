SELECT 
  c.customer_unique_id,
  c.customer_city,
  c.customer_state,
  COUNT(o.order_id) AS total_orders,
  ROUND(SUM(oi.price + oi.freight_value), 2) AS total_spent
FROM `dataanalystbootcamp23-471316.olist.orders` o
LEFT JOIN `dataanalystbootcamp23-471316.olist.customers` c
  ON o.customer_id = c.customer_id
LEFT JOIN `dataanalystbootcamp23-471316.olist.order_items` oi
  ON o.order_id = oi.order_id
GROUP BY c.customer_unique_id, c.customer_city, c.customer_state
HAVING total_orders > 1
ORDER BY total_orders DESC;
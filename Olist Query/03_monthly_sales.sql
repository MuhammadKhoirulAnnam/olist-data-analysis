SELECT
  EXTRACT(YEAR FROM o.order_purchase_timestamp) AS year,
  EXTRACT(MONTH FROM o.order_purchase_timestamp) AS month,
  FORMAT_DATE('%B', o.order_purchase_timestamp) AS month_name,
  ROUND(SUM(oi.price + oi.freight_value), 2) AS total_revenue
FROM `dataanalystbootcamp23-471316.olist.orders` o
LEFT JOIN `dataanalystbootcamp23-471316.olist.order_items` oi
  ON o.order_id = oi.order_id
WHERE o.order_status = 'delivered'
GROUP BY year, month, month_name
ORDER BY total_revenue DESC;
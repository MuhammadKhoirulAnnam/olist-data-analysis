-- Query 4: Rata-rata Waktu Pengiriman
SELECT
  ROUND(AVG(DATE_DIFF(
    order_delivered_customer_date,
    order_purchase_timestamp,
    DAY
  )), 2) AS avg_delivery_days,
  MIN(DATE_DIFF(
    order_delivered_customer_date,
    order_purchase_timestamp,
    DAY
  )) AS min_delivery_days,
  MAX(DATE_DIFF(
    order_delivered_customer_date,
    order_purchase_timestamp,
    DAY
  )) AS max_delivery_days
FROM `dataanalystbootcamp23-471316.olist.orders`
WHERE order_status = 'delivered'
  AND order_delivered_customer_date IS NOT NULL;
-- Query 2: Kota dengan Pelanggan Terbanyak
SELECT
  customer_city,
  COUNT(DISTINCT customer_id) AS total_customers
FROM `dataanalystbootcamp23-471316.olist.customers`
GROUP BY customer_city
ORDER BY total_customers DESC
LIMIT 10;
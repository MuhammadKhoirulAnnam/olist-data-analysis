-- Query 1: Kategori Produk dengan Revenue Terbesar
SELECT 
  p.product_category_name AS category,
  ROUND(SUM(oi.price + oi.freight_value), 2) AS total_revenue
FROM `dataanalystbootcamp23-471316.olist.order_items` oi
LEFT JOIN `dataanalystbootcamp23-471316.olist.products` p
  ON oi.product_id = p.product_id
WHERE p.product_category_name IS NOT NULL
GROUP BY p.product_category_name
ORDER BY total_revenue DESC
LIMIT 10;

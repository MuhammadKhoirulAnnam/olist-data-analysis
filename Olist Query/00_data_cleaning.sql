-- Data Cleaning: Cek Missing Value di 8 Tabel Utama
SELECT 'orders' AS table_name, 
       COUNT(*) AS total_rows,
       COUNTIF(order_id IS NULL) AS missing_1,
       COUNTIF(customer_id IS NULL) AS missing_2,
       COUNTIF(order_status IS NULL) AS missing_3
FROM `dataanalystbootcamp23-471316.olist.orders`

UNION ALL

SELECT 'order_items', 
       COUNT(*),
       COUNTIF(order_id IS NULL),
       COUNTIF(product_id IS NULL),
       COUNTIF(price IS NULL)
FROM `dataanalystbootcamp23-471316.olist.order_items`

UNION ALL

SELECT 'products', 
       COUNT(*),
       COUNTIF(product_id IS NULL),
       COUNTIF(product_category_name IS NULL),
       NULL
FROM `dataanalystbootcamp23-471316.olist.products`

UNION ALL

SELECT 'customers', 
       COUNT(*),
       COUNTIF(customer_id IS NULL),
       COUNTIF(customer_city IS NULL),
       COUNTIF(customer_state IS NULL)
FROM `dataanalystbootcamp23-471316.olist.customers`

UNION ALL

SELECT 'sellers', 
       COUNT(*),
       COUNTIF(seller_id IS NULL),
       COUNTIF(seller_city IS NULL),
       COUNTIF(seller_state IS NULL)
FROM `dataanalystbootcamp23-471316.olist.sellers`

UNION ALL

SELECT 'order_payments', 
       COUNT(*),
       COUNTIF(order_id IS NULL),
       COUNTIF(payment_type IS NULL),
       COUNTIF(payment_value IS NULL)
FROM `dataanalystbootcamp23-471316.olist.order_payments`

UNION ALL

SELECT 'order_reviews', 
       COUNT(*),
       COUNTIF(order_id IS NULL),
       COUNTIF(review_score IS NULL),
       COUNTIF(review_comment_message IS NULL)
FROM `dataanalystbootcamp23-471316.olist.order_reviews`

UNION ALL

SELECT 'geolocation', 
       COUNT(*),
       COUNTIF(geolocation_zip_code_prefix IS NULL),
       COUNTIF(geolocation_city IS NULL),
       COUNTIF(geolocation_state IS NULL)
FROM `dataanalystbootcamp23-471316.olist.geolocation`;

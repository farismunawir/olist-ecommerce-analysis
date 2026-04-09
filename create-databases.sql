LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/olist_customers_dataset.csv'
INTO TABLE customers
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/olist_order_items_dataset.csv'
INTO TABLE order_items
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/olist_order_payments_dataset.csv'
INTO TABLE order_payments
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/olist_order_reviews_dataset.csv'
INTO TABLE order_reviews
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@review_id,
@order_id,
@review_score,
@review_comment_title,
@review_comment_message,
@review_creation_date,
@review_answer_timestamp)
SET
review_id = @review_id,
order_id = @order_id,
review_score = NULLIF(TRIM(@review_score),''),
review_comment_title = NULLIF(TRIM(@review_comment_title),''),
review_comment_message = NULLIF(TRIM(@review_comment_message),''),
review_creation_date = STR_TO_DATE(NULLIF(TRIM(@review_creation_date),''), '%d/%m/%Y %H:%i'),
review_answer_timestamp = STR_TO_DATE(NULLIF(TRIM(@review_answer_timestamp),''), '%d/%m/%Y %H:%i');

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/olist_orders_dataset.csv'
INTO TABLE orders
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@customer_id,
@order_id,
@order_status,
@order_purchase_timestamp,
@order_approved_at,
@order_delivered_carrier_date,
@order_delivered_customer_date,
@order_estimated_delivery_date)
SET
customer_id = @customer_id,
order_id = @order_id,
order_status = NULLIF(TRIM(@order_status),''),
order_purchase_timestamp = NULLIF(TRIM(@order_purchase_timestamp),''),
order_approved_at = NULLIF(TRIM(@order_approved_at),''),
order_delivered_carrier_date = NULLIF(TRIM(@order_delivered_carrier_date),''),
order_delivered_customer_date = NULLIF(TRIM(@order_delivered_customer_date),''),
order_estimated_delivery_date = NULLIF(TRIM(@order_estimated_delivery_date),'');

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/olist_products_dataset.csv'
INTO TABLE products
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@product_id,
 @product_category_name,
 @product_name_length,
 @product_description_length,
 @product_photos_qty,
 @product_weight_g,
 @product_length_cm,
 @product_height_cm,
 @product_width_cm)
SET
product_id = @product_id,
product_category_name = NULLIF(@product_category_name, ''),
product_name_length = NULLIF(@product_name_length, ''),
product_description_length = NULLIF(@product_description_length, ''),
product_photos_qty = NULLIF(@product_photos_qty, ''),
product_weight_g = NULLIF(@product_weight_g, ''),
product_length_cm = NULLIF(@product_length_cm, ''),
product_height_cm = NULLIF(@product_height_cm, ''),
product_width_cm = NULLIF(@product_width_cm, '');

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/olist_sellers_dataset.csv'
INTO TABLE sellers
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

show warnings
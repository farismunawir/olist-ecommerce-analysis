CREATE TABLE customers (customer_id varchar(100),
customer_unique_id varchar(100),
customer_zip_code_prefix varchar(100),
customer_city varchar(100),
customer_state varchar(100));

CREATE TABLE order_items (order_id varchar(100),
order_item_id int,
product_id varchar(100),
seller_id varchar(100),
shipping_limit_date DATETIME,
price DECIMAL(10,2),
freight_value DECIMAL(10,2));


CREATE TABLE order_payments (order_id varchar(100),
payment_sequential int,
payment_type varchar(100),
payment_installments int,
payment_value decimal(10,2));

CREATE TABLE order_reviews (review_id varchar(100),
order_id varchar(100),
review_score int,
review_comment_title varchar(100),
review_comment_message text,
review_creation_date datetime,
review_answer_timestamp datetime);

CREATE TABLE orders (customer_id varchar(100),
order_id varchar(100),
order_status varchar(100),
order_purchase_timestamp DATETIME,
order_approved_at DATETIME,
order_delivered_carrier_date DATETIME,
order_delivered_customer_date DATETIME,
order_estimated_delivery_date DATETIME);

CREATE TABLE products (product_id varchar(100),
product_category_name varchar(100),
product_name_length int,
product_description_length int,
product_photos_qty int,
product_weight_g int,
product_length_cm int,
product_height_cm int,
product_width_cm int);

CREATE TABLE sellers (seller_id varchar(100),
seller_zip_code_prefix int,
seller_city varchar(100),
seller_state varchar(100));

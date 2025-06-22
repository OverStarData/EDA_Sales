
-- measures exploration

  -- ##############################

-- find the total sales

-- ##############################

select
	sum(sales_amount) as total_sales
	from [gold.fact_sales];
 
   -- ##############################

-- find how many items are sold

-- ##############################

select 
	sum(quantity) as total_items_sold 
	from [gold.fact_sales];

-- ##############################

-- find average selling price

-- ##############################


select 
	avg(price) as average_price 
	from [gold.fact_sales];

-- ##############################

-- find total number of orders

-- ##############################

select
	count( order_number) as total_orders,
	count(distinct order_number) as total_orders_distinct
	from [gold.fact_sales];

-- ##############################

-- find total number of products

-- ##############################

select
	COUNT( product_number) as total_products,
	COUNT(distinct product_number) as total_products_distinct
	from [gold.dim_products];

-- ##############################

-- find total number of customers

-- ##############################

select 
	COUNT(customer_id) as total_customers,
	COUNT(DISTINCT customer_id) as total_customers_distinct
	from [gold.dim_customers];


-- ##############################

-- find total number of customers that places orders

-- ##############################

select 
	count(distinct customer_key) as total_customers 
	from [gold.fact_sales];

-- ##############################

-- Generate a report that show all key metric of the business

-- ##############################

select 
	'total_sales' as measure_name,
	SUM(sales_amount) as measure_value
	from [gold.fact_sales]
union all

select 
	'total_quantity' as measure_name ,
	SUM(quantity) as measure_value from [gold.fact_sales]

union all


select 
    'average_sales' as measure_name,
	avg(price) as measure_value
	from [gold.fact_sales]

union all

select
    'total_orders' as measure_name,
	count( distinct order_number) as measure_value
	from [gold.fact_sales]

union all

select
    'total_products' as measure_name,
	COUNT(distinct product_number) as measure_value
	from [gold.dim_products]

union all

select 
	'total_customers' as measure_name,
	COUNT(DISTINCT customer_id) as measure_value
	from [gold.dim_customers];
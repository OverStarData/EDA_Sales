

-- Rank data

-- ##############################

-- what 5 products generate highest revenue

-- ##############################


select 
    top 5
	p.product_name,
	SUM(s.sales_amount) as total_revenue
	from [gold.fact_sales] s
	left join [gold.dim_products] p 
	on s.product_key = p.product_key
	group by p.product_name
	order by total_revenue desc;



-- ##############################

-- what 5 worst performs products in the sales

-- ##############################


select 
    top 5
	p.product_name,
	SUM(s.sales_amount) as total_revenue
	from [gold.fact_sales] s
	left join [gold.dim_products] p 
	on s.product_key = p.product_key
	group by p.product_name
	order by total_revenue;

-- ##############################

-- what 5 worst performs subcategory products in the sales

-- ##############################



select 
    top 5
	p.subcategory,
	SUM(s.sales_amount) as total_revenue
	from [gold.fact_sales] s
	left join [gold.dim_products] p 
	on s.product_key = p.product_key
	group by p.subcategory
	order by total_revenue;


-- ##############################

-- what 5 worst performs subcategory products in the sales use row_rank

-- ##############################

select *
from (
	select top 5
	p.subcategory,
	SUM(s.sales_amount) as total_revenue,
	ROW_NUMBER() OVER (order by SUM(s.sales_amount)) as rank_product
	from [gold.fact_sales] s
	left join [gold.dim_products] p 
	on s.product_key = p.product_key
	group by p.subcategory)t
where rank_product <= 5;


-- ##############################

-- find the top 10 customers  who have generate highest reveune 
-- And 3 customers with the fewest order placed
-- ##############################


select 
	top 10
	c.customer_key,
    c.first_name,
	c.last_name,
	SUM(s.sales_amount) as total_revenue
	from [gold.fact_sales] s
	left join [gold.dim_customers] c 
	on s.customer_key = c.customer_id
	where c.customer_id is not null
	group by c.customer_key ,c.first_name,c.last_name
	order by total_revenue desc;



select 
	top 3
	c.customer_key,
    c.first_name,
	c.last_name,
	count(distinct order_number) as total_orders
	from [gold.fact_sales] s
	left join [gold.dim_customers] c 
	on s.customer_key = c.customer_id
	where c.customer_id is not null
	group by c.customer_key ,c.first_name,c.last_name
	order by total_orders;


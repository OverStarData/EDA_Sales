


-- explore date

-- ##############################

-- find the date of the first and last order
-- how many years are available

-- ##############################

SELECT  
	MIN(order_date) AS first_order_date,
	MAX(order_date) AS last_order_date,
	DATEDIFF(month, MIN(order_date), MAX(order_date)) AS order_range_months
	FROM [gold.fact_sales];


-- ##############################

-- find the youngest and oldest customers

-- ##############################

select 
    max(birthdate),
    DATEDIFF(year, max(birthdate),GETDATE()) as youngest_customer,
    min(birthdate),
    DATEDIFF(year, min(birthdate),GETDATE()) as orders_customer
    from [gold.dim_customers];

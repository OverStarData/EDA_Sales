


-- explore dimensions

-- ############################

-- explore all countries our customers come from

-- ##############################


select
	distinct country
	from [gold.dim_customers];




-- ############################

-- explore Categories countries  we have for products

-- ##############################

select
	distinct category 
	from [gold.dim_products];


-- explore dimensions

-- ############################

-- explore all subcategory our customers come from

-- ##############################

select 
	distinct category, subcategory
	from [gold.dim_products]
	where category is not null;
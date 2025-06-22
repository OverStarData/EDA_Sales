-- explore Database tables & columns

-- ###################
-- explore tables
-- ###################
select * from INFORMATION_SCHEMA.TABLES ;

-- #################
-- explore columns
-- ################

select * from INFORMATION_SCHEMA.COLUMNS;

select
	*
	from INFORMATION_SCHEMA.COLUMNS
	where TABLE_NAME = 'gold.dim_customers' ;

select
	*
	from
	INFORMATION_SCHEMA.COLUMNS
	where TABLE_NAME = 'gold.dim_products' ;

select
	*
	from 
	INFORMATION_SCHEMA.COLUMNS
	where TABLE_NAME = 'gold.fact_sales' ;
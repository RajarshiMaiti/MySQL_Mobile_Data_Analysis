-- MYSQL Project --

create schema raj;

use raj;

select *from mobile;

-- Check mobile features and price list --
select phone_name, price from mobile;

-- Find out the price of 5 most expensive phones --
select *from mobile
order by price desc
limit 5;


-- Find out the price of 5 most cheapest phones --
select *from mobile
order by price asc
limit 5;

-- List of top 5 Samsung phones with price and all features --
select *from mobile where brands = "samsung"
order by price desc
limit 5;


-- Must have android phone list then top 5 High Price android phones--
select *from mobile where Operating_System_Type = "Android"
order by price desc
limit 5;


-- -- Must have android phone list then top 5 Lower Price android phones--
select *from mobile where Operating_System_Type = "Android"
order by price asc
limit 5;

-- Must have IOS phone list then top 5 High price IOS Phones --
select *from mobile where Operating_System_Type = "IOS"
order by price desc
limit 5;


-- Must have IOS phone list then top 5 lower price IOS Phones --
select *from mobile where Operating_System_Type = "IOS"
order by price asc
limit 5;


-- Write a query which phone support 5g and also top 5 phones with 5g support --
select *from mobile where 5g_availability = "Yes"
order by price desc
limit 5;

-- Total price of all mobile is to be found with brand name--
select brands, sum(price) from mobile group by brands;

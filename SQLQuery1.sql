with hotels as(
select * from dbo.[2018]
UNION
select * from dbo.[2019]
UNION
select * from dbo.[2020])
 
select * from hotels
left join dbo.market_segment on
hotels.market_segment = dbo.market_segment.market_segment
left join dbo.meal_cost ON
dbo.meal_cost.meal = hotels.meal;

select arrival_date_year, hotel,
round(sum((stays_in_weekend_nights+stays_in_week_nights)* adr),2) as revenue
FROM hotels
group by arrival_date_year,hotel;


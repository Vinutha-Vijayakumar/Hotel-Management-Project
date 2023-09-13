with hotels as (select * from dbo.eighteen
union
select * from dbo.nineteen
union
select * from dbo.twenty)
select * from hotels
left join
dbo.market_segment
on hotels.market_segment=market_segment.market_segment
left join dbo.meal_cost
on hotels.meal=meal_cost.meal;

----------------------
with hotels as (select * from dbo.eighteen
union
select * from dbo.nineteen
union
select * from dbo.twenty)
select arrival_date_year,
hotel,
sum((stays_in_week_nights + stays_in_weekend_nights)* adr)
as Revenue from hotels
group by arrival_date_year, hotel;
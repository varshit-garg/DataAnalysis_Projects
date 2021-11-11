with hotels as
(select * from dbo.[2020]
union 
select * from dbo.[2019]
union
select * from dbo.[2018])

select * from hotels
left join dbo.market_segment
on hotels.market_segment=market_segment.market_segment
left join dbo.meal_cost
on meal_cost.meal=hotels.meal



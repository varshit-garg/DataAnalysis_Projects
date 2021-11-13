# Data Analysis Using SQL

1. Show all records of year 2020

   ```select * from dbo.[2020] ```


2. Show all records of year 2019

   ```select * from dbo.[2019]```


3. Show all records of year 2018

    ```select * from dbo.[2018]```

4. Show the complete record including all the years (2020,2019,2018) also including the market segment and meal costs
   
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
        on meal_cost.meal=hotels.meal```

# Data Anlaysis Using Power BI

1. Formula for calculating the Revenue column

   ```([stays_in_week_nights] + [stays_in_weekend_nights]) * ([adr]) * ([1-discount])```


# Preview of Dashboard : 


![Screenshot (20)](https://user-images.githubusercontent.com/51748060/141612696-f4f01aae-be6c-4093-b72a-f0d0e303fca8.jpg)





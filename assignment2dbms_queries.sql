use sakila;

-- Q1
select fi.title
from film fi,film_list fili
where fili.category = 'Documentary'
AND find_in_set('Deleted Scenes',fi.special_features)
AND fi.film_id = fili.FID;

-- Q2
SELECT 
    fili.title, COUNT(ALL fili.title) AS countoftitles
FROM
    film_list fili,
    inventory inv,
    rental ren,
    staff stf
WHERE
    fili.category = 'Sci-Fi'
        AND fili.FID = inv.film_id
        AND inv.inventory_id = ren.inventory_id
        AND ren.staff_id = stf.staff_id
        AND stf.first_name = 'Jon'
        AND stf.last_name = 'Stephens'
GROUP BY title;

-- Q3
select total_sales
from sales_by_film_category
where category = 'Animation';

-- Q4
SELECT 
    fili.title, COUNT(ALL fili.title) AS countoftitles
FROM        
            customer cust,
            film_list fili,
            inventory inv,
            rental ren
        WHERE
                cust.first_name = 'PATRICIA'
                AND cust.last_name = 'JOHNSON'
                AND inv.inventory_id = ren.inventory_id
                AND fili.FID = inv.film_id
                AND cust.customer_id = inv.customer_id
GROUP BY fili.title
ORDER BY COUNT(fili.title) DESC
LIMIT 3;

-- Q5
select fi.title,COUNT(ALL fi.title) as countoftitles
from film fi,customer cust,inventory inv,rental ren
where cust.customer_id = inv.customer_id
and fi.film_id = inv.film_id
and inv.inventory_id = ren.inventory_id
and cust.first_name = 'SUSAN'
and cust.last_name = 'WILSON'
group by fi.title;

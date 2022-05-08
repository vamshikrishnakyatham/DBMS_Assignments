use sakila;

-- Q1

SELECT 
    fi.film_id, fi.title
FROM
    category cat,
    film_category ficat,
    film fi
WHERE
    cat.category_id = ficat.category_id
        AND cat.name = 'Comedy'
        AND ficat.film_id = fi.film_id
        AND fi.rating = 'PG-13';



-- Q2

SELECT 
    fili.title, COUNT(ALL fili.title) AS countoftitles
FROM
    film_list fili,
    inventory inv,
    rental ren
WHERE
    fili.category = 'Horror'
        AND fili.FID = inv.film_id
        AND inv.inventory_id = ren.inventory_id
GROUP BY title
ORDER BY COUNT(fili.title) DESC
LIMIT 3;

-- Q3

SELECT 
    *
FROM
    customer_list
WHERE
    country = 'India'
        AND ID IN (SELECT 
            ren.customer_id
        FROM
            film_list fili,
            inventory inv,
            rental ren
        WHERE
            fili.category = 'Sports'
                AND fili.FID = inv.film_id
                AND ren.inventory_id = inv.inventory_id
        GROUP BY ren.customer_id);
        
-- Q4

SELECT 
    *
FROM
    customer_list cusli
WHERE
    cusli.country = 'Canada'
        AND ID IN (SELECT 
            ren.customer_id
        FROM
            actor act,
            film_actor fiac,
            inventory inv,
            rental ren
        WHERE
            act.first_name = 'NICK'
                AND act.last_name = 'WAHLBERG'
                AND act.actor_id = fiac.actor_id
                AND fiac.film_id = inv.film_id
                AND inv.inventory_id = ren.inventory_id);
                
-- Q5

SELECT 
    COUNT(DISTINCT fiac.film_id)
FROM
    actor act,
    film_actor fiac
WHERE
    act.first_name = 'SEAN'
        AND act.last_name = 'WILLIAMS'
        AND fiac.actor_id = act.actor_id;

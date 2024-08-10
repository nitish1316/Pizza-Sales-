create database pizzahut;

use pizzahut;


CREATE TABLE pizza_type (
    pizza_type_id VARCHAR(30),
    name VARCHAR(200) NOT NULL,
    category VARCHAR(100) NOT NULL,
    ingredients VARCHAR(255) NOT NULL,
    PRIMARY KEY (pizza_type_id)
);


INSERT INTO pizza_type (pizza_type_id, name, category, ingredients) VALUES
('bbq_ckn', 'The Barbecue Chicken Pizza', 'Chicken', 'Barbecued Chicken, Red Peppers, Green Peppers, Tomatoes, Red Onions, Barbecue Sauce'),
('cali_ckn', 'The California Chicken Pizza', 'Chicken', 'Chicken, Artichoke, Spinach, Garlic, Jalapeno Peppers, Fontina Cheese, Gouda Cheese'),
('ckn_alfredo', 'The Chicken Alfredo Pizza', 'Chicken', 'Chicken, Red Onions, Red Peppers, Mushrooms, Asiago Cheese, Alfredo Sauce'),
('ckn_pesto', 'The Chicken Pesto Pizza', 'Chicken', 'Chicken, Tomatoes, Red Peppers, Spinach, Garlic, Pesto Sauce'),
('southw_ckn', 'The Southwest Chicken Pizza', 'Chicken', 'Chicken, Tomatoes, Red Peppers, Red Onions, Jalapeno Peppers, Corn, Cilantro, Chipotle Sauce'),
('thai_ckn', 'The Thai Chicken Pizza', 'Chicken', 'Chicken, Pineapple, Tomatoes, Red Peppers, Thai Sweet Chilli Sauce'),
('big_meat', 'The Big Meat Pizza', 'Classic', 'Bacon, Pepperoni, Italian Sausage, Chorizo Sausage'),
('classic_dlx', 'The Classic Deluxe Pizza', 'Classic', 'Pepperoni, Mushrooms, Red Onions, Red Peppers, Bacon'),
('hawaiian', 'The Hawaiian Pizza', 'Classic', 'Sliced Ham, Pineapple, Mozzarella Cheese'),
('ital_cpcllo', 'The Italian Capocollo Pizza', 'Classic', 'Capocollo, Red Peppers, Tomatoes, Goat Cheese, Garlic, Oregano'),
('napolitana', 'The Napolitana Pizza', 'Classic', 'Tomatoes, Anchovies, Green Olives, Red Onions, Garlic'),
('pep_msh_pep', 'The Pepperoni, Mushroom, and Peppers Pizza', 'Classic', 'Pepperoni, Mushrooms, Green Peppers'),
('pepperoni', 'The Pepperoni Pizza', 'Classic', 'Mozzarella Cheese, Pepperoni'),
('the_greek', 'The Greek Pizza', 'Classic', 'Kalamata Olives, Feta Cheese, Tomatoes, Garlic, Beef Chuck Roast, Red Onions'),
('brie_carre', 'The Brie Carre Pizza', 'Supreme', 'Brie Carre Cheese, Prosciutto, Caramelized Onions, Pears, Thyme, Garlic'),
('calabrese', 'The Calabrese Pizza', 'Supreme', 'Nduja Salami, Pancetta, Tomatoes, Red Onions, Friggitello Peppers, Garlic'),
('ital_supr', 'The Italian Supreme Pizza', 'Supreme', 'Calabrese Salami, Capocollo, Tomatoes, Red Onions, Green Olives, Garlic'),
('peppr_salami', 'The Pepper Salami Pizza', 'Supreme', 'Genoa Salami, Capocollo, Pepperoni, Tomatoes, Asiago Cheese, Garlic'),
('prsc_argla', 'The Prosciutto and Arugula Pizza', 'Supreme', 'Prosciutto di San Daniele, Arugula, Mozzarella Cheese'),
('sicilian', 'The Sicilian Pizza', 'Supreme', 'Coarse Sicilian Salami, Tomatoes, Green Olives, Luganega Sausage, Onions, Garlic'),
('soppressata', 'The Soppressata Pizza', 'Supreme', 'Soppressata Salami, Fontina Cheese, Mozzarella Cheese, Mushrooms, Garlic'),
('spicy_ital', 'The Spicy Italian Pizza', 'Supreme', 'Capocollo, Tomatoes, Goat Cheese, Artichokes, Peperoncini verdi, Garlic'),
('spinach_supr', 'The Spinach Supreme Pizza', 'Supreme', 'Spinach, Red Onions, Pepperoni, Tomatoes, Artichokes, Kalamata Olives, Garlic, Asiago Cheese'),
('five_cheese', 'The Five Cheese Pizza', 'Veggie', 'Mozzarella Cheese, Provolone Cheese, Smoked Gouda Cheese, Romano Cheese, Blue Cheese, Garlic'),
('four_cheese', 'The Four Cheese Pizza', 'Veggie', 'Ricotta Cheese, Gorgonzola Piccante Cheese, Mozzarella Cheese, Parmigiano Reggiano Cheese, Garlic'),
('green_garden', 'The Green Garden Pizza', 'Veggie', 'Spinach, Mushrooms, Tomatoes, Green Olives, Feta Cheese'),
('ital_veggie', 'The Italian Vegetables Pizza', 'Veggie', 'Eggplant, Artichokes, Tomatoes, Zucchini, Red Peppers, Garlic, Pesto Sauce'),
('mediterraneo', 'The Mediterranean Pizza', 'Veggie', 'Spinach, Artichokes, Kalamata Olives, Sun-dried Tomatoes, Feta Cheese, Plum Tomatoes, Red Onions'),
('mexicana', 'The Mexicana Pizza', 'Veggie', 'Tomatoes, Red Peppers, Jalapeno Peppers, Red Onions, Cilantro, Corn, Chipotle Sauce, Garlic'),
('spin_pesto', 'The Spinach Pesto Pizza', 'Veggie', 'Spinach, Artichokes, Tomatoes, Sun-dried Tomatoes, Garlic, Pesto Sauce'),
('spinach_fet', 'The Spinach and Feta Pizza', 'Veggie', 'Spinach, Mushrooms, Red Onions, Feta Cheese, Garlic'),
('veggie_veg', 'The Vegetables + Vegetables Pizza', 'Veggie', 'Mushrooms, Tomatoes, Red Peppers, Green Peppers, Red Onions, Zucchini, Spinach, Garlic');

-- Lets check our pizza_type table 

select * 
from pizza_type;

-- check all table in datanase 

show tables ;

-- checking the order_details table 

select *
from order_details;

-- checking the order table 
select *
from orders;

-- checking the pizzas table 
select *
from pizzas;

-- Retrieve the total number of orders placed.

SELECT 
    COUNT(order_id) AS total_order
FROM
    orders;



-- Calculate the total revenue generated from pizza sales.

SELECT 
    ROUND(SUM((quantity * price)), 2) AS total_sales
FROM
    order_details AS Q
        JOIN
    pizzas AS p ON Q.pizza_id = p.pizza_id;


-- Identify the highest-priced pizza.

SELECT 
    pizza_type.name, pizzas.price
FROM
    pizza_type
        JOIN
    pizzas USING (pizza_type_id)
ORDER BY pizzas.price DESC
LIMIT 1;



-- Identify the most common pizza size ordered.

SELECT p.size, COUNT(o.order_details_id) AS total_order_count
FROM order_details AS o
JOIN pizzas AS p 
USING (pizza_id)
GROUP BY p.size 
ORDER BY total_order_count DESC;


-- List the top 5 most ordered pizza types along with their quantities.

SELECT pizza_type.name, SUM(order_details.quantity) AS total_quantities
FROM pizza_type
JOIN pizzas USING (pizza_type_id)
JOIN order_details USING (pizza_id)
GROUP BY pizza_type.name
ORDER BY total_quantities DESC
LIMIT 5;



-- Intermediate:
-- Join the necessary tables to find the total quantity of each pizza category ordered.

select sum(order_details.quantity) as total_quantity , pizza_type.category
from pizza_type join pizzas 
using (pizza_type_id)
join order_details 
using(pizza_id)
group by pizza_type.category
order by total_quantity desc;

-- Determine the distribution of orders by hour of the day.
 select  count(order_id) , hour(time) as Hour 
 from orders
 group by Hour;
 
 -- Join relevant tables to find the category-wise distribution of pizzas.
 
 select count(name) , category 
 from pizza_type
 group by category ;
 
 
 -- Group the orders by date and calculate the average number of pizzas ordered per day.
 
SELECT 
    AVG(total_quantity) AS avg_quantity_per_order
FROM
    (SELECT 
        date, SUM(quantity) AS total_quantity
    FROM
        order_details AS o
    JOIN orders AS ord USING (order_id)
    GROUP BY date) AS order_quantity;
    
    -- Determine the top 3 most ordered pizza types based on revenue.

SELECT 
    pizza_type.name, 
    SUM(order_details.quantity * pizzas.price) AS total_revenue 
FROM 
    pizza_type 
JOIN 
    pizzas USING(pizza_type_id)
JOIN 
    order_details USING(pizza_id)
GROUP BY 
    pizza_type.name 
ORDER BY 
    total_revenue DESC 
LIMIT 3;

-- * Advanced:
-- Calculate the percentage contribution of each pizza type to total revenue.


SELECT 
    pizza_type.category, 
    SUM(order_details.quantity * pizzas.price) AS pizza_revenue,
    (SUM(order_details.quantity * pizzas.price) / (SELECT SUM(order_details.quantity * pizzas.price) FROM order_details JOIN pizzas USING(pizza_id)) * 100) AS total_percentage_revenue
FROM 
    pizza_type 
JOIN 
    pizzas USING(pizza_type_id)
JOIN 
    order_details USING(pizza_id)
GROUP BY 
    pizza_type.category 
ORDER BY 
    total_percentage_revenue DESC ;
    
-- Analyze the cumulative revenue generated over time.

/* cumulative 
200    200 
300    500 
250    750 */ 

SELECT 
    date, 
    SUM(pizza_revenue) OVER (ORDER BY date) AS cumulative_revenue
FROM (
    SELECT 
        orders.date,
        SUM(order_details.quantity * pizzas.price) AS pizza_revenue
    FROM 
        order_details 
    JOIN 
        pizzas USING(pizza_id)
    JOIN 
        orders USING(order_id)
    GROUP BY 
        orders.date
) AS sales
ORDER BY 
    date;


-- Determine the top 3 most ordered pizza types based on revenue for each pizza category.
SELECT name, pizza_revenue 
FROM (
    SELECT 
        category,
        name,
        pizza_revenue,
        RANK() OVER (PARTITION BY category ORDER BY pizza_revenue DESC) AS rn
    FROM (
        SELECT 
            pizza_type.name,
            pizza_type.category,
            SUM(order_details.quantity * pizzas.price) AS pizza_revenue
        FROM 
            pizza_type 
        JOIN 
            pizzas USING(pizza_type_id) 
        JOIN 
            order_details USING(pizza_id) 
        GROUP BY 
            pizza_type.name, pizza_type.category
    ) AS revenue_summary
) AS ranked_data
WHERE rn <= 3
ORDER BY category, rn;



    
















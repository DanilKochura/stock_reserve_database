use mydb;
/* Сложные запросы     */
/* 1. покупки в марте */
SELECT id_b, byer.name, product.name_p, sum(quantity) 
	FROM byer JOIN orders ON orders.id_byer=byer.id_b
		JOIN order_string ON order_string.id_order=orders.id_o
			JOIN product ON product.sipher=order_string.id_product
	WHERE MONTH(orders.date_order) = 3 AND YEAR(orders.date_order) = 2022 AND orders.state = 2
    GROUP BY product.name_p, byer.name;
/*                   */
/* 2. все товары Maxim  апреле */
SELECT DISTINCT product.sipher, product.name_p FROM product
		JOIN order_string ON order_string.id_product=product.sipher
			JOIN orders ON order_string.id_order=orders.id_o
				JOIN byer ON orders.id_byer=byer.id_b
					WHERE MONTH(orders.date_order) = 3 AND YEAR(orders.date_order) = 2022 
                    AND byer.name="Maxim";
/*                               */
/* 3. все сведения о самом дорогом товаре на складе */
SELECT * FROM product where unit_price = (select max(unit_price) from product);
/*                                                   */
/* 4. Покупатели без заказов     */
SELECT byer.*
FROM byer LEFT JOIN orders ON orders.id_byer=byer.id_b
		where id_o is null;
/* 5 покупатели без заказов в марте */
SELECT byer.* FROM byer 
	LEFT JOIN (select * from orders where year(date_order)=2022 and month(date_order)=3) as ss
    ON ss.id_byer=byer.id_b
		where id_o is null;
/*                                      */
/* 6. Самое большое число заказов в 22 году */
drop view bestbyer;
select * from bestbyer;
CREATE VIEW bestbyer as
SELECT id_b, name, address, phone, date_contract, total_bought, bank_account, bic, bank_name, count(id_o) AS "Count_of_orders" FROM byer
	JOIN orders ON id_byer = id_b
		WHERE year(date_order) = 2022 group by id_b;
        
select * from bestbyer where Count_of_orders = (select max(Count_of_orders) from bestbyer);

/*                                             */
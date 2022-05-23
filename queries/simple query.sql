/* 1. Пользователи с котрактом в марте 2020*/
SELECT * FROM byer
WHERE YEAR(date_contract)=2020 AND MONTH(date_contract)=3;
/*                 */

/*2. Заказы за последние 60 дней */
SELECT * FROM orders 
WHERE (DATEDIFF(CURRENT_DATE(), date_order))<60;
/*                  */
/* 3. Заказы моложе пяти дней */
SELECT state, count(id_o) AS amount 
FROM orders WHERE ((DATEDIFF(CURRENT_DATE(), date_order))<=5) GROUP BY state;
/*                             */
/* 4. Номера телефонов м 495 */
SELECT * FROM byer WHERE phone LIKE "_495%";
/*                       */
/* 5. Сумма неоплаченных заказов    */
SELECT id_byer, sum(total) FROM orders WHERE state = 1 GROUP BY id_byer ORDER BY total;
 /*                        */
 /* 6.						*/
SELECT id_byer, max(total) FROM orders WHERE state = 2 AND YEAR(date_order) = 2022 GROUP BY id_byer;
/*                     */
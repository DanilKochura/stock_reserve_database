use mydb;

show tables;
alter table orders rename column status to state;
select * from orders;
select* from order_string; 
delete from orders where id_o>0;
insert into byer(id_b, name, address, phone, date_contract, bank_account, bic, bank_name)
values(1, "Danil", "Sochi", 89885811407, "2021-02-15 05:48:50", "02222555561", 2235453, "Sberbank"),
(2, "Maxim", "Bryansk", 84952556564, "2020-03-16 12:58:50","022525252", 45075340, "Sberbank" ),
(3, "Bogdan", "Balabanovo", 8495325255, "2021-06-15 05:48:50", "15155641688", 6786745, "Tinkoff"),
(4, "Anton", "Usinsk", 89265233654, "2022-03-25 16:29:00", "5469300766991", 628741653, "VTB"),
(5, "Vladimir", "Krasnodar", 84955556664, "2020-03-15 09:00:00", "5555646869972", 226255, "Bank of America"),
(6, "Dmitry", "Chelyabinsk", 89524956523, "2020-04-01 18:36:55", "68745554", 23528668, "Raifaizen"),
(7, "Oleg", "Astrahan'", 86451234565, "2020-05-12 12:55:45", "4655456", 1235449, "Pochtabank");
insert into byer(id_b, name, address, phone, date_contract, bank_account, bic, bank_name)
values(8, "Ivan", "Tolliatty", 86454234565, "2020-02-14 12:54:45", "466556", 1289449, "Pochtabank"); 

select * from byer;
insert into product(sipher, name_p, unit, unit_price, quantity_actual, last_update_date_act)
values(1001, "Milk", "litres", 100, 150, "2022-02-25 12:00:00"),
(1002, "Water", "litres", 20, 1200, "2022-02-25 12:00:00"),
(1003, "Olive oil", "litres", 150, 80, "2022-02-25 12:00:00"),
(1004, "Flour", "kilograms", 100, 120, "2022-03-02 12:00:00"),
(1005, "White rice", "kilograms", 110, 500, "2022-03-02 12:00:00"),
(1006, "Apple", "kilograms", 50, 320, "2022-03-02 12:00:00"),
(1007, "Wine", "bottles", 5000, 16, "2022-03-11 12:00:00");
select * from product;
insert into orders(id_o, id_byer, state, date_order, date_payment_max, date_payment_fact, total)
values(2, 1, 3, "2022-02-25 12:59:23", "2022-02-28 12:59:23", null, 11000),
(3, 2, 2, "2022-03-02 13:49:26", "2022-03-05 13:49:26", "2022-03-06 10:00:00", 5500),
(4, 1, 3, "2022-03-03 13:46:58", "2022-03-06 13:46:58", null, 850),
(5, 3, 3, "2022-03-05 19:21:23", "2022-03-08 19:21:23", null, 6750),
(6, 4, 2, "2022-03-08 23:02:25", "2022-03-11 23:02:25", "2022-03-10 13:49:26", 6000),
(7, 5, 1, "2022-03-11 12:56:55", "2022-03-13 12:56:55", null, 4850),
(9, 1, 1, "2022-03-10 12:59:00", "2022-03-13 12:59:23", null, 1480),
(10, 2, 2, "2022-03-10 12:59:00", "2022-03-13 12:59:23", "2022-03-11 12:00:00", 2000),
(11, 6, 1, "2022-03-17 12:59:00", "2022-03-20 12:59:23", null, 1100),
(12, 1, 1, "2022-03-18 12:59:00", "2022-03-21 12:59:23", null, 700),
(13, 5, 2, "2022-03-17 12:59:00", "2022-03-20 12:59:23", "2022-03-20 12:00:00", 1250);
insert into orders(id_o, id_byer, state, date_order, date_payment_max, date_payment_fact, total)
values(1, 2, 3, "2020-02-12 11:55:56", "2020-02-15 11:55:56", null, 11000);

select* from orders;
insert into order_string(id_str, id_product, quantity, id_order)
values(1, 1001, 10, 1),
(2, 1004, 100, 1),
(3, 1005, 50, 2),
(4, 1006, 2, 3),
(5, 1003, 5, 3),
(6, 1007, 1, 4),
(7, 1002, 10, 4),
(8, 1001, 5, 4),
(9, 1003, 7, 4),
(10, 1004, 10, 5),
(11, 1007, 1, 5),
(12, 1002, 100, 6),
(13, 1003, 8, 6),
(14, 1005, 15, 6),
(15, 1006, 16, 7),
(16, 1001, 10, 7),
(17, 1003, 5, 9),
(18, 1005, 3, 9),
(19, 1006, 8, 9),
(20, 1003, 10, 10),
(21, 1006, 10, 10);
insert into order_string(id_str, id_product, quantity, id_order)
values(22, 1005, 10, 11),
(23, 1001, 7, 12),
(24, 1004, 12, 13),
(25, 1006, 1, 13);
select * from order_string;
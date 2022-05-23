/* PROCEDURE */
delimiter //
CREATE PROCEDURE date_check(dat DATE)
begin
	update orders
		set state = 3
		where date(date_payment_max) < date(dat) and state = 1;
end //
drop procedure date_check;
call date_check("2022-03-18");
/*                                     */
/* trigger                               */
delimiter //
CREATE TRIGGER upd_state AFTER UPDATE ON Orders FOR EACH ROW
BEGIN
DECLARE olds INT;
IF new.state = 2 and old.state=1 then
        select total_bought from byer 
			join orders ON byer.id_b=new.id_byer and id_o=old.id_o into olds;
        update byer
        set total_bought =  olds+new.total
        where id_b=new.id_byer;
END IF;
END //

show triggers;
drop trigger upd_state;

update orders
set state = 1
where id_o =7;

select * from orders join byer on id_b=id_byer where orders.state=2;
/*                          */
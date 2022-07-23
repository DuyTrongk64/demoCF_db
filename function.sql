create trigger rct_inf_price after insert on receipt_infor
    for each row execute procedure rct_inf_price();

create or replace function rct_inf_price() returns trigger
as $example_table$
 BEGIN
    update receipt_infor
    set
        pay = (select price*new.amount  from menu where new.ma_mon=menu.ma_mon)
    where  ma_mon=new.ma_mon ;
    RETURN NEW;
END;
$example_table$ LANGUAGE plpgsql;

create trigger rct_update after insert on receipt_infor
    for each row execute procedure rct_update();

create or replace function rct_update()  returns trigger
as $example_table$
 BEGIN
    update receipt
    set
        sum = (select sum(b1.pay) from (select * from receipt_infor where receipt.receipt_id=new.receipt_id) b1
        where b1.receipt_id= new.receipt_id)
    where receipt.receipt_id=new.receipt_id;
    RETURN NEW;
 END;
$example_table$ LANGUAGE plpgsql;



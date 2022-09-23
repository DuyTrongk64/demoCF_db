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




create or replace function tables_inf(table_id varchar) returns table(ten_mon varchar, amount int, price int, pay int )
as $BODY$
BEGIN
    RETURN QUERY
    select b1.ten_mon, b1.amount, b1.price, b1.pay from (select a1.ten_mon,a1.price,a1.ma_mon,a2.amount,a2.pay,a2.receipt_id from menu  a1,
(select receipt_id,receipt_infor.amount,receipt_infor.pay,receipt_infor.ma_mon from receipt_infor) a2
where a2.ma_mon=a1.ma_mon) b1,(select * from receipt) b2 where b2.tbl_id=table_id and b2.trang_thai=true and b2.receipt_id=b1.receipt_id;
end;
$BODY$ LANGUAGE plpgsql;

create or replace function find_by_tl(name varchar) returns table(ma_mon varchar, ten_mon varchar, ma_loai varchar, price int, dv varchar )
as $BODY$
BEGIN
    RETURN QUERY
       select m1.ma_mon,m1.ten_mon,m1.ma_loai,m1.price,m1.dv from menu m1,(select phanloai.ma_loai from phanloai where ten_loai = name) a1 where m1.ma_loai = a1.ma_loai;
end;
$BODY$ LANGUAGE plpgsql;



select * from tables_inf('b1');

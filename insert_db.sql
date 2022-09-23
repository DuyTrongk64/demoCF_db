insert into nhanvien(nv_id,nv_name,cccd,age,gender,phone_num,mail,address,user_name,pass_word,phan_quyen)
values
    ('2019T405','Nguyen Duy Trong','0215991678',21,'true','0817226323','abcd01@gmail.com','ba dinh','trongk64','12345678','true'),
    ('2019T407','Nguyen Tung Son','0828344644',21,'true','0811222333',default,'thi tran','sonlinhngu','12345678',default),
    ('2019T703','Tran Binh Minh','0335535937',21,'true','0611222333','abcd02@gmail.com','thanh hoa','minhCS','12345678','true'),
    ('2020T402','Nguyen Van A','0624072059',19,'false','0511222333','abcd03@gmail.com','ha noi','ngvana','12345678',default),
    ('2019T301','Nguyen Van B','0271259521',20,'false','0141222333',default,'ha noi','ngvanb','12345678',default),
    ('2019T1107','Nguyen Van C','0957436506',20,'false','0113222333','abcd04@gmail.com','ha nam','ngvanc','12345678',default),
    ('2020T602','Nguyen Van D','0502843607',22,'true','0112222333',default,'ha noi','ngvand','12345678',default),
    ('2019T101','Nguyen Van M','0327644092',22,'false','0112292333','abcd05@gmail.com','hai phong','ngvanm','12345678',default),
    ('2019T1101','Nguyen Van N','0159503018',21,'false','0112227333',default,'cao bang','ngvann','12345678',default);

insert into phanloai(ma_loai, ten_loai)
values ('cf','coffee'),('mt','milk tea'),('sd','soda'),('vt','vitamin'),('ch','chocolate'),
       ('mc','matcha'),('tp','topping'),('ff','food');

insert into menu(ma_mon, ten_mon, ma_loai, price, dv)
values('cfd', 'Cà phê sữa đá', 'cf', 29000, 'Ly'),
      ('bx', 'Bạc xỉu', 'cf', 29000, 'Ly'),
      ('crm', 'Caramel Macchiato', 'cf', 50000, 'Ly'),
      ('cfn', 'Cà phê nóng', 'cf', 59000, 'Ly'),
      ('cbcs', 'Cold Brew cam sả', 'cf', 50000, 'Ly'),
      ('ltd', 'Latte đá', 'cf', 50000, 'Ly'),
      ('tcfd', 'Trà cà phê đá xay', 'cf', 59000, 'Ly'),
      ('cb', 'Cold Brew', 'cf', 50000, 'Ly'),
      ('cbct', 'Cold Brew cổ truyền', 'cf', 45000, 'Ly'),
      ('cdx', 'Cookie đá xay', 'cf', 59000, 'Ly'),
      ('dvd', 'Đào việt quất đá', 'mt', 59000, 'Ly'),
      ('cdc', 'Chocolate đá xay', 'ch', 59000, 'Ly'),
      ('mdx', 'Matcha đá xay', 'mc', 59000, 'Ly'),
      ('csd', 'Chanh sả đá xay', 'mt', 49000, 'Ly'),
      ('tdcs', 'Trà đào cam sả', 'mt', 45000, 'Ly'),
      ('tbm', 'Trà bưởi mật ong', 'mt', 50000, 'Ly'),
      ('os', 'Oolong hạt sen', 'mt', 52000, 'Ly'),
      ('tsv', 'Trà cam vàng', 'mt', 55000, 'Ly'),
      ('stc', 'Sinh tố cam xoài', 'vt', 59000, 'Ly'),
      ('stv', 'Sinh tố việt quất', 'vt', 59000, 'Ly'),
      ('tdm', 'Trà đen Macchiato', 'mt', 42000, 'Ly'),
      ('mtm', 'Matcha Macchiato', 'mc', 45000, 'Ly'),
      ('txm', 'Trà xoài Macchiato', 'mt', 50000, 'Ly'),
      ('tlm', 'Trà lài Macchiato', 'mt', 42000, 'Ly'),
      ('chm', 'Cherry Macchiato', 'mt', 50000, 'Ly'),
      ('dr', 'Điều vàng rang','ff', 20000, 'Gói'),
      ('dpt', 'Đậu phộng tỏi ớt','ff', 10000, 'Goi'),
      ('ms', 'Mít sấy', 'ff', 20000, 'Gói'),
      ('tmn', 'Trà Matcha nóng', 'mc', 59000, 'Ly'),
      ('tmd', 'Trà Matcha đá', 'mc', 59000, 'Ly'),
      ('scd', 'Socola đá', 'ch', 59000, 'Ly'),
      ('cfp', 'Cà phê phin TCH ','cf', 60000, 'Gói'),
      ('cfa', 'Cà phê Arabica TCH', 'cf', 100000, 'Gói'),
      ('cc','coca-cola','sd',10000,'Lon'),
      ('ps','pepsi','sd',10000,'Lon'),
      ('mrd','mirinda','sd',10000,'Lon'),
      ('nd','nha dam','tp',5000,'Cốc'),
      ('ccd','chan chau den','tp',5000,'Cốc'),
      ('cct','chân châu trắng','tp',5000,'Cốc');

insert into tables(tbl_id, tbl_name, status)
values ('b1','ban1',default),('b2','ban2',default),('b3','ban3',default),('b4','ban4',default),
       ('b5','ban5',default),('b6','ban6',default),('b7','ban7',default),('b8','ban8',default),
       ('b9','ban9',default),('b10','ban10',default),('b11','ban11',default),('b12','ban12',default);
show datestyle;

insert into receipt (receipt_id, sale, tbl_id, datetime)
values ('b1793079',default,'b1','12-4-2019 08:23:30'),
       ('b3949270',default,'b3','12-4-2019 08:27:30'),
       ('b4417335',default,'b4','12-4-2019 22:13:39'),
       ('b7786762',20,'b7','13-4-2019 09:30:15'),
       ('b1149772',10,'b11','13-4-2019 18:25:30'),
       ('b6618156',default,'b6','13-4-2019 21:15:29'),
       ('b4473067',15,'b9','14-4-2019 08:30:30'),
       ('b1322864',default,'b12','12-4-2019 08:23:30');

insert into receipt_infor( receipt_id, ma_mon, amount)
values ('b1793079','cfd',2),('b1793079','crm',1),
       ('b3949270','cb',1),('b3949270','csd',2),
       ('b4417335','tbm',2),('b4417335','tsv',1),
       ('b7786762','mtm',3),('b7786762','os',2),
       ('b1149772','tdcs',2),('b1149772','csd',2),
       ('b1149772','nd',4),('b1793079','cfd',2),
       ('b1793079','tmd',2),('b6618156','scd',2),
       ('b6618156','tdm',3),('b4473067','tcfd',2),
       ('b4473067','cfn',2),('b1322864','bx',1);

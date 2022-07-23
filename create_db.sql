
CREATE TABLE "nhanvien" (
                            "nv_id" varchar PRIMARY KEY,
                            "nv_name" varchar NOT NULL,
                            "cccd" varchar(12) UNIQUE NOT NULL,
                            "age" int NOT NULL,
                            "gender" boolean NOT NULL,
                            "phone_num" varchar NOT NULL,
                            "mail" varchar,
                            "address" varchar NOT NULL,
                            "user_name" varchar(16) UNIQUE NOT NULL,
                            "pass_word" varchar NOT NULL,
                            "phan_quyen" boolean DEFAULT false
);

CREATE TABLE "phanloai" (
                            "ma_loai" varchar(12) PRIMARY KEY,
                            "ten_loai" varchar NOT NULL
);

CREATE TABLE "menu" (
                        "ma_mon" varchar(12) PRIMARY KEY,
                        "ten_mon" varchar(50) NOT NULL,
                        "ma_loai" varchar(12) NOT NULL,
                        price int not null ,
                        dv varchar(12) not null ,
                    constraint ma_loai_fk
                        FOREIGN KEY ("ma_loai") REFERENCES "phanloai" ("ma_loai")
            ON DELETE CASCADE
          ON update CASCADE
);

CREATE TABLE "tables" (
                          "tbl_id" varchar(12) PRIMARY KEY,
                          "tbl_name" varchar(10) NOT NULL,
                          "status" boolean DEFAULT false

);

CREATE TABLE "receipt" (
                           "receipt_id" varchar(12) PRIMARY KEY,
                           "sale" int default 0,
                           "tbl_id" varchar(12) NOT NULL,
                           "datetime" timestamp NOT NULL,
                           "sum" int default 0,
                               constraint  tbl_id_fk
                               FOREIGN KEY ("tbl_id") REFERENCES "tables" ("tbl_id")
                               ON DELETE CASCADE
                               ON update CASCADE
);

CREATE TABLE "receipt_infor" (
                                 "receipt_id" varchar(12) NOT NULL,
                                 "ma_mon" varchar(12) NOT NULL,
                                 "amount" int NOT NULL,
                                 "pay" int default 0,
                                 constraint rect_id_fk
                                 FOREIGN KEY ("receipt_id") REFERENCES "receipt" ("receipt_id")
                                     ON DELETE CASCADE
                                     ON update CASCADE,
                                     constraint ma_mon_fk
                                 FOREIGN KEY ("ma_mon") REFERENCES "menu" ("ma_mon")
                                     ON DELETE CASCADE
                                     ON update CASCADE
);





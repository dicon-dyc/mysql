SHOW DATABASES;
USE girls;
SHOW TABLES;

#插入语句
#方式一：经典的插入
SELECT *
FROM beauty;
#插入的值的类型要与列的类型一致或兼容
INSERT INTO beauty(id,NAME,sex,borndate,phone,photo,boyfriend_id)
VALUES(13,'唐艺昕','女','1990-4-23','1898888888',NULL,2);

#列的顺序可以调换
INSERT INTO beauty(NAME,sex,id,phone)
VALUES('蒋欣','女',16,'110');
INSERT INTO beauty(NAME,sex,id,phone)
VALUES('娜扎','女',15,'13888');
SELECT *
FROM beauty;

#列数和值的个数必须一致
INSERT INTO beauty(NAME,sex,id,phone)
VALUES('关晓彤','女',17,'110');
SELECT *
FROM beauty;

#可以省略列名，默认所有列，而且列的顺序和表中的顺序一致

INSERT INTO beauty
VALUES(18,'张飞','男',NULL,'119',NULL,NULL);
SELECT *
FROM beauty;

#方式二
INSERT INTO beauty
SET id = 19, NAME = '刘涛',phone='999';
SELECT *
FROM beauty;

#方式一支持插入多行方式二不支持
INSERT INTO beauty
VALUES(23,'唐艺昕1','女','1990-4-23','1898888888',NULL,2)
,(24,'唐艺昕2','女','1990-4-23','1898888888',NULL,2)
,(25,'唐艺昕3','女','1990-4-23','1898888888',NULL,2);
SELECT *
FROM beauty;
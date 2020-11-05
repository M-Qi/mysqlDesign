/*
    关系型数据库:sqlite  db2  mysql  oracle  access  sql server
    非关系型数据库：mongodb  redis  memcache
*/

--- 查看当前用户---
select user();

--- 退出mysql ---
quit;
exit;

--- 创建账号 ---
--- 指定某一个IP ---
192.168.100.9
create user 'bruce'@'192.168.100.9';
--- 指定网段 ---
create user 'username'@'192.168.100.%';
--- 所有的ip都能访问 ---
create user 'username' @'%';

--- 远程登录指定 ---
mysql -u root -p password -h 指定某一个IP;

--- 查看某个账号权限 ---
show grants for 'username'@'IP';


--- 给账号授权 ---
grant all on *.* to 'username'@'%';
--- 刷新权限 ---
flush privileges;

--- 创建账号并授权 ---
grant all on *.* to 'username' @ '%' identified by '123456'

/*
    SQL 结构查询语言，分成三种类型
    1.DDL   数据定义语言：数据库，表，视图，索引，存储过曾
    2.DML   数据操纵语言：插入数据 insert 删除 delete 更新 update 查询 select
    3.DCL   数据库控制语言：比如控制用户的访问权限 grant revoke
    
*/

--- 创建一个数据库 ---
create database 'db1' charset utf8;
--- 查询所有数据库 ---
show databases;
--- 修改数据库 ---
alter database 'db1' charset gbk;
--- 删除数据库 ---
drop database 'db1';

--- 操作表 ---
use db1;
create table 't1'(id int,name char);
show tables;

alter table 't1' modify 'name' char(3);
alter table 't1' change 'name' 'username' char(2);



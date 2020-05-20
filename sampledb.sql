show databases;

create database sampledb;

use sampledb;

show tables;

drop table Category;

drop table CategorySequence;
drop table currency;
drop table country;
create table category (id int,categoryName varchar(20),categoryDescr varchar(200),createdBy varchar(50),createdOn Timestamp default current_timestamp,
                        updatedBy varchar(50),updatedOn Timestamp default current_timestamp,Flag boolean,primary key(id));

                      
create table currency (id int,currencyname varchar(20),currencyCode varchar(200),createdBy varchar(50),createdOn Timestamp default current_timestamp,
                        updatedBy varchar(50),updatedOn Timestamp default current_timestamp,Flag boolean,primary key(id));
                        
create table country (id int,countryName varchar(20),countryCode varchar(200),currencyId int,createdBy varchar(50),createdOn Timestamp default current_timestamp,
                        updatedBy varchar(50),updatedOn Timestamp default current_timestamp,Flag boolean,primary key(id),foreign key(currencyId) references currency(id) );
                        
commit;

desc category;
create table categorysequence(next_val int not null ,primary key(next_val) )auto_increment=1;
insert into categorysequence values(0);

commit;

select * from categorysequence;
select * from category;

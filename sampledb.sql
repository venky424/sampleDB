show databases;

create database sampledb;

use sampledb;

show tables;

create table category (id int,categoryName varchar(20),categoryDescr varchar(20),createdBy varchar(50),createdOn Timestamp default current_timestamp,
                        updatedBy varchar(50),updatedOn Timestamp default current_timestamp,Flag boolean,primary key(id));

                      
create table currency (id int,currencyname varchar(20),currencyCode varchar(20),createdBy varchar(50),createdOn Timestamp default current_timestamp,
                        updatedBy varchar(50),updatedOn Timestamp default current_timestamp,Flag boolean,primary key(id));
                        
create table country (id int,countryName varchar(20),countryCode varchar(20),currencyId int,createdBy varchar(50),createdOn Timestamp default current_timestamp,
                        updatedBy varchar(50),updatedOn Timestamp default current_timestamp,Flag boolean,primary key(id),foreign key(currencyId) references currency(id) );
                        
commit;

select * from category;

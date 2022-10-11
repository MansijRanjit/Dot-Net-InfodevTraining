create database infodevTraining;

use infodevTraining;

create table college
(
 id int identity(1,1) primary key,
 college_name varchar(50)
)

INSERT INTO college VALUES('EVEREST')

ALTER TABLE college ADD [ADDRESS] VARCHAR(100)

INSERT INTO college (college_name,[address]) VALUES ('PRIME','NAYABAJAR')

SELECT * FROM college

select distinct college_name from college







create table studentdetails
(
 id int identity(1,1) primary key,
 name varchar(50),
 address varchar(50),
 phone bigint,
 gender varchar(50)
)

create table library
(
 id int foreign key references studentdetails(id),
 lid int identity(1,1) primary key,
 bissued varchar(50),
 fineamt int
)

create table stdfees
(
 fid varchar(50) not null,
 id int foreign key references studentdetails(id),
 fees int not null,
 sem varchar(50)
)


insert into studentdetails values('Mansij','Kalanki',9840253456,'Male')
insert into studentdetails values('Krishna','Kalimati',9843454566,'Male')

insert into library (id,bissued,fineamt) values(1,'Supermansij the unsung hero',0)
insert into library (id,bissued,fineamt) values(3,'Mahabharat behind the imaginations',0)

insert into stdfees(fid,id,fees,sem) values(9,1,90000,'7thsem')
insert into stdfees(fid,id,fees,sem) values(1,3,90000,'8thsem')


select * from studentdetails
select * from library
select * from stdfees

drop table studentdetails
drop table library
drop table stdfees

delete from studentdetails
delete from library
delete from stdfees
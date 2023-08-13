create database Hospital
use Hospital
create table Departments(
Id int primary key identity(1,1) not null,
Building int  not null check(Building>1 and Building<5),
Financing money not null check(Financing!<0) default 0,
[Name] nvarchar(30) unique not null check([Name]!='') 
) 

create table Diseases(
Id int primary key identity(1,1) not null,
[Name] nvarchar(100) unique not null check([Name]!='') ,
Severity int not null check(Severity!<1) default 0
)
create table Doctors(
Id int primary key identity(1,1) not null,
[Name] nvarchar(max) not null check([Name]!=''),
Phone char(10) not null,
Salary money not null check(Salary!=0),
Surname nvarchar(max) not null check(Surname!='')
)
create table Examinations(
Id int primary key identity(1,1) not null,
[DayOfWeek] int not null check([DayOfWeek]>=1 and [DayOfWeek]<=7),
StartTime time check(StartTime>='8:00' and StartTime<='18:00') not null,
EndTime time not null,
[Name] nvarchar(100) unique check([Name]!='') not null,
check(EndTime>StartTime)
)
create table Wards(
Id int primary key identity(1,1) not null,
Building int check(Building!<1 and Building!>5) not null,
[Floor]  int check([Floor]!<1 and [Floor]!>5) not null,
[Name] nvarchar(20) check([Name]!='') unique not null
)
select * from Departments
select Phone, Surname from Doctors
select DISTINCT [Floor] from Wards
select count(*) as 'Name of Disease' from Diseases
select count(*) as 'Severity of Disease' from Diseases
from Severty
[UQ__Diseases__737584F6C1760290]
INSERT Wards
VALUES (1, 1, '???????1'),
(2,1,'???????2'),
(1,3,'???????3'),
(1,3,'???????4'),
(2,4,'???????5')
INSERT Doctors
VALUES('????', '0962426967', 15000, '???????'),
('?????', '0982345612', 19000, '????????'),
('?????', '0962189456', 20000, '??????')
INSERT Diseases
VALUES ('????', 2),
('COVID-19', 15),
('???????', 6),
('?????', 10)
INSERT Departments
VALUES (5, 35000, '????????'),
(3, 40000,  '?????????'),
(5, 25000,  '????????'),
(5, 50000, '?????????????')
INSERT Departments
VALUES (3, 13000,  '???????????? ?????????'),
(3, 12000,  '?????????')
INSERT Examinations
VALUES (2, '10:00', '10:20', '????????????'),
(3, '11:00', '11:20', '???????'),
(1, '12:00', '12:30', '???????'),
(4, '10:00', '10:10', '?????? ?? ?????'),
(2, '10:00', '10:05', '???????')
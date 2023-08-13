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

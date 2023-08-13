create table Groups(
Id int primary key identity(1,1) not null,
GroupName nvarchar(20),
)


create table Students(
Id int primary key identity(1,1) not null,
FirstName nvarchar(20),
Surname nvarchar(30),
Patronomic nvarchar(30) null,
--DateOfBirth datetime,
GroupId int not null references Groups(Id)
)

insert into Groups values ('P81'), ('P91')
insert into Students(FirstName, Surname, DateOfBirth, GroupId) values('John','Program', '2006-04-30', 2),('Dima','Exter','1995-01-10',2)
select * from Students
select S.FirstName+' '+S.Surname Fullname, G.GroupName from Students S, Groups G
where S.GroupId=G.Id
delete from Students
select * from Students
drop table Groups
create database Hospital
use Hospital
create table Doctors(
Id int, 
Firstname nvarchar(20) not null,
Surname nvarchar(30) not null,
Age int CHECK(Age>18),
Email nvarchar(50)unique check(Email!=''),
primary key(Id),
CHECK(Surname<>Firstname)
)
--drop table Doctors
insert into Doctors(Firstname,Surname,Email),




select * from Students

ALTER TABLE Students ADD default 'XXX' for [Address]

insert into Students ([Age],[FullName])
values(21,'Samil Ferruxov')

alter table Students

add Country nvarchar(20)

select Count(*) as'Students count' from Students

select Sum(Age) as'Students age sum' from Students

select Avg(Age) as'Students age avg' from Students

select Max(Age) as'Students age max' from Students

select Min(Age) as'Students age min' from Students

select SUBSTRING('Nurlan bey necesiniz?', 1,10)

select REPLACE('Nurlan','Nur','Quru')

select SUBSTRING([FullName], 1,5) from Students

declare @avgAge int = (select Avg[Age] from Students)

declare @sumAge int = (select Sum[Age] from Students)

if @sumAge > @avgAge
    print 'Yes'
else 
    print 'No'



create table Countries(
     [Id] int primary key identity(1,1),
	 [Name] nvarchar(50)
)

insert into Countries([Name])
values('Azerbaycan'),
      ('Turkiye'),
	  ('Ispanya'),
	  ('Almaniya')

select * from Countries

create table Cities(
     [Id] int primary key identity(1,1),
	 [Name] nvarchar(50),
	 [CountryId] int,
	 foreign key (CountryId) references Countries(Id) 
)


select * from Cities

insert into Cities([Name],[CountryId])
values('Baku', 1),
      ('Aghsu', 1),
	  ('Shusha', 1),
	  ('Antalya', 2),
	  ('Madrid', 3),
	  ('Barcelona', 3),
	  ('Berlin', 4),
	  ('Hamburg', 4)

select * from Cities Where CountryId=1

create table Students(
    [Id] int primary key identity(1,1),
	[Name] nvarchar(50),
	[Address] nvarchar(50),
	[Email] nvarchar(50),
	[Age] int,
	[CountryId] int,

	foreign key (CityId) references Cities (Id)
)

select * from Students


create table Teachers(
     [Id] int primary key identity(1,1),
	 [FullName] nvarchar(100),
	 [Salary] float,
	 [Age] int,
	 [CityId] int,
	 foreign key (CityId) references Cities(Id)
)

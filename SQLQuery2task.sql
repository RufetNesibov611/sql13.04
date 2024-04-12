create table Students(
     [Id] int primary key identity(1,1),
	 [FullName] nvarchar(100),
	 [Email] nvarchar(100)
)

insert into Students([FullName],[Email])
values('Nurlan Musayev','nurlanmyev@code.edu.az'),
      ('Rufet Nesibov','rufetnesibov@code.edu.az'),
	  ('Samil Ferruxov','samilferruxov@code.edu.az'),
	  ('Nurlan Eliyev','nurlaneyev@code.edu.az'),
	  ('Ramin Mahmudov','raminmahmudov@code.edu.az')


	  select * from Students
	
create database WebApiEg

create table student
(
	Id int identity(1,1),
	First_Name varchar(50),
    Last_Name varchar(50),

)

create or alter proc usp_student_save
(@FName varchar(50),@LName varchar(50))
as 
begin
	insert into student([First_Name],[Last_Name]) values(@FName,@LName);
end
go

exec usp_student_save @FName='Mansij',@LName='Ranjit'

--select* from student

create or alter proc usp_student_display
(@Id int)
as 
begin
	select * from student where id=@Id;
end
go

exec usp_student_display @Id=2;


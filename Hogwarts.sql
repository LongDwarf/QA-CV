create database Hogwarts;
/*
Created a new database.
*/
use Hogwarts;
/*
Used the Hogwarts database in order to create a new table.
*/
create table Students(
students_ID int not null auto_increment,
students_Names varchar (35),
students_Age int not null,
students_Faculties varchar (25),
primary key (students_ID)
)
/*
Created a new table.
*/
select * from hogwarts.students; 
/*
Cheked the results.
*/
insert into hogwarts.students (students_ID, students_Names, students_Age, students_Faculties) values 
(1, 'Harry Potter', 12, 'Gryffindor'),
(2, 'Ronald Weasley', 13, 'Gryffindor'),
(3, 'Hermione Granger', 12, 'Gryffindor'),
(4, 'Draco Lucius Malfoy', 12, 'Slytherin'),
(5, 'Susan Bones', 13, 'Hufflepuff'),
(6, 'Luna Scamander', 15, 'Ravenclaw');
/*
Filled the table with information about students.
*/
select * from hogwarts.students; 
/*
Cheked the results.
*/
update hogwarts.students set students_Names = 'David Blind', students_Age = 14 where students_ID = 5;
/*
Changed the name of the student and the student`s age.
*/
select * from hogwarts.students; 
/*
Cheked the result.
*/
delete from hogwarts.students where students_ID = 3;
/*
Deleted one of the students from the list.
*/
select * from hogwarts.students; 
/*
Cheked the result.
*/
set @autoid :=0;
update hogwarts.students set students_ID = @autoid := (@autoid+1);
alter table students Auto_increment = 0;
/*
Reseated the student`s ID.
*/
select * from hogwarts.students; 
/*
Cheked the result.
*/
drop table students;
/*
Deleted the students table.
*/
drop database hogwarts;
/*
Deleted the hogwarts database.
*/



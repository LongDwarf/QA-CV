create database Hogwarts_DB;
/*
Created a database and called it "Hogwarts_DB".
*/
use Hogwarts_DB;
/*
I Used the "HogwartsDB" database in order to create a table.
*/
create table hogwarts_Subjects(
subjects_id int not null auto_increment,
subjects_names varchar (30)unique,
index idx_subjects_names (subjects_names), 
primary key (subjects_id)
)
/*
Created a new table and called it "hogwarts_Subjects". And also I added an index in order to do this expression as a foreign key in the next stage.
*/
insert into Hogwarts_DB.hogwarts_Subjects(subjects_id, subjects_names)
values
(1, 'Herbology'),
(2, 'Potions'),
(3, 'Transfiguration'),
(4, 'Defence Against the Dark Arts'),
(5, 'Charms')
/*
Filled the table with data about Hogwarts subjects.
*/
select * from hogwarts_Subjects
/*
I checked the result.
*/
create table hogwarts_Stuff(
professors_ID int not null auto_increment,
professors_names varchar (40),
index idx_professors_names(professors_names),
primary key (professors_ID),
subjects_names varchar (30),
foreign key (subjects_names) references hogwarts_Subjects(subjects_names)
)
/*
I created a new table and called it "hogwarts_Stuff". 
*/
insert into Hogwarts_DB.hogwarts_Stuff(professors_ID, professors_names, subjects_names)
values
(1, 'Pomona Sprout', 'Herbology'),
(2, 'Severus Snape', 'Potions'),
(3, 'Minerva McGonagall', 'Transfiguration'),
(4, 'Dolores Umbridge', 'Defence Against the Dark Arts'),
(5, 'Drak Leg', 'Charms')
/*
Filled the table with data about professors and their subjects.
*/
select * from hogwarts_Stuff
/*
I checked the result.
*/
create table hogwarts_Houses(
houses_ID int not null auto_increment,
houses_Names varchar (20),
index idx_houses_Names(houses_Names),
primary key (houses_ID),
professors_names varchar (40),
foreign key(professors_names) references hogwarts_Stuff (professors_names)
)
/*
I created a new table and called it "hogwarts_Houses."
*/
insert into Hogwarts_DB.hogwarts_Houses(houses_ID, houses_Names, professors_names)
values
(1, 'Gryffindor', 'Pomona Sprout'),
(2, 'Slytherin', 'Severus Snape'),
(3, 'Ravenclaw', 'Minerva McGonagall'),
(4, 'Hufflepuff', 'Drak Leg')
/*
Filled the table with data about Hogwarts houses and their professors.
*/
select * from hogwarts_Houses
/*
I checked the result.
*/
create table classes_Shedual(
days_ID int not null auto_increment,
days_Names varchar (10),
index idx_days_Names(days_Names),
primary key (days_ID),
subjects_names varchar(30),
professors_names varchar (40),
foreign key (subjects_names) references hogwarts_Subjects(subjects_names),
foreign key (professors_names) references hogwarts_Stuff(professors_names)
)
/*
I created a new table and called it "classes_Shedual." And added two foreign keys in order to link three tables.
*/
insert into Hogwarts_DB.classes_Shedual(days_ID, days_Names, subjects_names, professors_names)
values
(1, 'Monday', 'Herbology', 'Pomona Sprout'),
(2, 'Tuesday', 'Potions', 'Severus Snape'),
(3, 'Wednesday', 'Transfiguration', 'Minerva McGonagall'),
(4, 'Thursday', 'Defence Against the Dark Arts', 'Dolores Umbridge'),
(5, 'Friday', 'Charms', 'Drak Leg')
/*
Filled the table with data about Shedual.
*/
select * from classes_Shedual;
/*
I checked the result.
*/
create table hogwarts_Students(
students_ID int not null auto_increment,
students_Names varchar (45),
students_Age int not null,
primary key (students_ID),
houses_Names varchar (20),
days_Names varchar (25),
foreign key (houses_Names) references hogwarts_Houses(houses_Names),
foreign key (days_Names) references classes_Shedual(days_Names)
)
/*
Created a new table and called it "hogwarts_Students". And added two foreign keys in order to link three tables.
*/
alter table hogwarts_Students
add constraint chk_students_age check (students_age >= 12);
/*
I added checking of the age of the students.
*/
select * from hogwarts_students;
/*
I checked the result.
*/
insert into Hogwarts_DB.hogwarts_Students(students_ID, students_Names, students_Age, houses_Names, days_Names)
value
(1, 'Harry Potter', 12, 'Gryffindor', 'Monday'),
(2, 'Draco Malfoy', 12, 'Slytherin', 'Tuesday'),
(3, 'Cedric Diggory', 17, 'Hufflepuff', 'Wednesday'),
(4, 'Luna Lovegood', 13, 'Ravenclaw', 'Friday')
/*
Filled the table with data about students.
*/
select * from hogwarts_students;
/*
I checked the result.
*/







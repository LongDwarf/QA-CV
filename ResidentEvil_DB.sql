create database REDB;
/*
Created a database and called it "REDB".
*/
use REDB;
/*
I Used the "REDB" database in order to create a table.
*/
create table residentevil_List_Of_Games(
games_ID int not null auto_increment,
names_Games varchar (40) unique,
release_Datas int not null,
primary key (games_ID)
)
/*
Created a new table and called it "residentevil_List_Of_Games"
*/
insert into REDB.residentevil_List_Of_Games (games_ID, names_Games, release_Datas)
values
(1, 'Resident Evil 1', 1996),
(2, 'Resident Evil 2', 1998),
(3, 'Resident Evil 3: Nemesis', 1999),
(4, 'Resident Evil – Code: Veronica', 2000),
(5, 'Resident Evil Zero', 2002),
(6, 'Resident Evil 4', 2005)
/*
Filled the table with data about video games.
*/
select * from residentevil_List_Of_Games;
/*
I checked the result.
*/
select count(*) from residentevil_List_Of_Games;
/*
I checked the amount of games.
*/
create table characters_Names(
 characters_ID int not null auto_increment,
 characters_FirstNames varchar (30),
 charaters_SecondNames varchar (30),
 primary key (characters_ID),
 names_Games varchar (40),
 foreign key (names_Games) references residentevil_List_Of_Games(names_Games)
)
/*
Created a new table with a foreign key and linked it with the residentevil_List_Of_Games table.
*/
insert into REDB.characters_Names (characters_ID, characters_FirstNames, charaters_SecondNames)
values
(1, 'Chris', 'Redfield'),
(2, 'Leon', 'Kennedy'),
(3, 'Jill', 'Valentine'),
(4, 'Clare', 'Redield'),
(5, 'Rebecca', 'Chambers'),
(6, 'Leon', 'Kennedy');
/*
Filled the table with data about the game's characters.
*/
select count(characters_FirstNames), characters_FirstNames from characters_Names group by characters_FirstNames;
/*
I counted people with the same first name.
*/
UPDATE REDB.characters_Names SET names_Games = 'Resident Evil 1' WHERE characters_ID = '1';
UPDATE REDB.characters_Names SET names_Games = 'Resident Evil 2' WHERE characters_ID = '2';
UPDATE REDB.characters_Names SET names_Games = 'Resident Evil 3: Nemesis'  WHERE characters_ID = '3';
UPDATE REDB.characters_Names SET names_Games = 'Resident Evil – Code: Veronica' WHERE characters_ID = '4';
UPDATE REDB.characters_Names SET names_Games = 'Resident Evil Zero' WHERE characters_ID = '5';
UPDATE REDB.characters_Names SET names_Games = 'Resident Evil 4' WHERE characters_ID = '6';
/*
I update the characters_Names table with data.
*/
select * from characters_Names;
/*
I checked the result.
*/
create table characters_Weapon(
 weapons_ID int not null auto_increment,
 weapons_Type varchar (30),
 primary key (weapons_ID),
 characters_ID int,
 foreign key (characters_ID) references characters_Names (characters_ID)
)
/*
Created another new table with a foreign key and linked it with the characters_Names table.
*/
insert into REDB.characters_Weapon (weapons_ID, weapons_Type)
values 
(1, 'knife'),
(2, 'Pistol'),
(3, 'Pistol'),
(4, 'Pistol'),
(5, 'Knife'),
(6, 'Pistol');
/*
Filled the table with data about the weapons.
*/
UPDATE REDB.characters_Weapon SET characters_ID =  '1' WHERE weapons_ID = '1';
UPDATE REDB.characters_Weapon SET characters_ID =  '2' WHERE weapons_ID = '2';
UPDATE REDB.characters_Weapon SET characters_ID =  '3' WHERE weapons_ID = '3';
UPDATE REDB.characters_Weapon SET characters_ID =  '4' WHERE weapons_ID = '4';
UPDATE REDB.characters_Weapon SET characters_ID =  '5' WHERE weapons_ID = '5';
UPDATE REDB.characters_Weapon SET characters_ID =  '6' WHERE weapons_ID = '6';
/*
I update the characters_Weapon table with data.
*/
select * from characters_Weapon;
/*
I checked the result.
*/
drop database REDB;
/*
I deleted REDB database.
*/



















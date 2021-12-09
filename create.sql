create database geartracker_db;

use geartracker_db;

create table student (
	surrogate_id int NOT NULL AUTO_INCREMENT,
    fine int,
    sports_team TINYINT(1),
	-- tinyint 0 is false 1 is true 
    constraint pk_student PRIMARY KEY (surrogate_id)

);

insert into student (fine,sports_team) values (1,0),(2,1),(3,0),(4,1),(5,0),(0,0);

create table user (
	surrogate_id int NOT NULL AUTO_INCREMENT,
    user_id varchar(30),
    UNIQUE(user_id),
    name varchar(50),
    password varchar(50),
    email varchar(50),
    -- fk
    student int,
    -- fk 
    constraint pk_user PRIMARY KEY (surrogate_id)
);

insert into user (user_id,name,password,email,student) values 
("admin1","admin1","admin1","admin1@iiitb.ac.in",NULL),
("admin2","admin2","admin2","admin2@iiitb.ac.in",NULL),
("sportscomm1","sportscomm1","sportscomm1","sportscomm1@iiitb.ac.in",NULL),
("sportscomm2","sportscomm2","sportscomm2","sportscomm2@iiitb.ac.in",NULL),
("stud1","stud1","stud1","stud1@iiitb.ac.in",1),
("stud2","stud2","stud2","stud2@iiitb.ac.in",2),
("stud3","stud3","stud3","stud3@iiitb.ac.in",3),
("stud4","stud4","stud4","stud4@iiitb.ac.in",4),
("stud5","stud5","stud5","stud5@iiitb.ac.in",5),
("stud6","stud6","stud6","stud6@iiitb.ac.in",6);

create table equipment (
	surrogate_id int NOT NULL AUTO_INCREMENT,
    equipment_id varchar(10),
    UNIQUE(equipment_id),
    equipment_category varchar(30),
    sports_team TINYINT(1),
    -- tinyint 0 is false else is true 
    equipment_status varchar(30),
    equipment_description TEXT,
    constraint pk_equipment PRIMARY KEY (surrogate_id)
);

insert into equipment (equipment_id,equipment_category,sports_team,equipment_status,equipment_description) values ("F1","Football", 0 ,"available","Football is a very Popular game"),
("F2","Football", 1 ,"available","Football is a very Popular game"),
("BB1","Basketball", 0 ,"issued","Basketball is orange colored"),
("BB2","Basketball", 1 ,"issued","Basketball is orange colored"),
("CBT1","Cricket", 0 ,"requested","Cricket is a very Popular game"),
("CBA1","Cricket", 0 ,"issued","Cricket is a very Popular game"),
("BR1","Badminton", 0 ,"broken","Badminton is a very Popular game"),
("BC1","Badminton", 0 ,"discarded","Badminton is a very Popular game"),
("TT1","Table_Tennis", 0 ,"lost","Table_Tennis is a very Popular game");

create table requests (
    surrogate_id int NOT NULL AUTO_INCREMENT,
    -- fk
    id_user int,
    id_equipment int,
    -- fk
    issue_date date,
    return_date date,
    request_status varchar(30),
    constraint pk_requests PRIMARY KEY (surrogate_id)
);

insert into requests (id_user,id_equipment,issue_date,return_date,request_status) values (5,5,NULL,NULL,"open"),(5,6,'2021-11-01',NULL,"approved"),(6,3,'2021-12-04',NULL,"approved"),(6,4,'2021-11-30',NULL,"approved"),(7,1,'2021-11-30','2021-12-02',"closed"),(8,2,'2021-12-03','2021-12-04',"closed"),(9,7,'2021-11-07','2021-11-14',"closed"),(9,7,'2021-11-15','2021-11-17',"closed"),(10,8,'2021-11-05','2021-11-10',"closed"),(10,9,'2021-11-10','2021-11-14',"closed");

create table user_role (
    surrogate_id int NOT NULL AUTO_INCREMENT,
    -- fk
    id_user int,
    -- fk
    role varchar(20),
    constraint pk_user_role PRIMARY KEY (surrogate_id)
);

insert into user_role (id_user,role) values (1,"admin"),(2,"admin"),(3,"sportscomm"),(4,"sportscomm"),(5,"student"),(6,"student"),(7,"student"),(8,"student"),(9,"student"),(10,"student");

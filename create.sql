create database geartracker_db;

use geartracker_db;

create table student (
	surrogate_id int NOT NULL AUTO_INCREMENT,
    fine int,
    sports_team TINYINT(1),
	-- tinyint 0 is false 1 is true 
    constraint pk_student PRIMARY KEY (surrogate_id)

);

insert into student (fine,sports_team) values (0,0),(100,1);

create table user (
	surrogate_id int NOT NULL AUTO_INCREMENT,
    user_id varchar(30),
    UNIQUE(user_id),
    name varchar(50),
    passwrd varchar(30) NOT NULL,
    email varchar(50),
    -- fk
    student int,
    -- fk 
    constraint pk_user PRIMARY KEY (surrogate_id)
);

insert into user (user_id,name,passwrd,email,student) values ("stud1","stud1","password","stud1@iiitb.ac.in",1),("admin1","admin1","password","admin1@iiitb.ac.in",NULL),("sportscomm1","sportscomm1","password","sportscomm1@iiitb.ac.in",NULL),("stud2","stud2","password","stud2@iiitb.ac.in",2);

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

insert into equipment (equipment_id,equipment_category,sports_team,equipment_status,equipment_description) values ("F1","Football", 0 ,"available","Football is a very Popular game"),("F2","Football", 1 ,"available","Football is a very Popular game"),("BB1","Basketball", 0 ,"issued","Basketball is orange colored");

create table requests (
    surrogate_id int NOT NULL AUTO_INCREMENT,
    -- fk
    id_user varchar(30),
    id_equipment varchar(10),
    -- fk
    issue_date date,
    return_date date,
    request_status varchar(30),
    constraint pk_requests PRIMARY KEY (surrogate_id)
);

insert into requests (id_user,id_equipment,issue_date,return_date,request_status) values ("stud1","F1",'2021-10-02','2021-10-08',"closed"),("stud2","F2",'2021-10-02',NULL,"open"),("stud2","BB1",'2021-10-02','2021-10-08',"closed");

create table user_role (
    surrogate_id int NOT NULL AUTO_INCREMENT,
    -- fk
    id_user varchar(30),
    -- fk
    role varchar(20),
    constraint pk_user_role PRIMARY KEY (surrogate_id)
);

insert into user_role (id_user,role) values ("stud1","student"),("admin1","admin"),("sportscomm1","sportscomm"),("stud2","student");

create database geartracker_db;

use geartracker_db;

create table student (
	surrogate_id int NOT NULL,
    fine int,
    sports_team TINYINT(1),
	-- tinyint 0 is false 1 is true 
    constraint pk_student PRIMARY KEY (surrogate_id)

);

insert into student values (1,0,0),(2,100,1);

create table user (
	surrogate_id int NOT NULL,
    user_id varchar(30),
    name varchar(50),
    passwrd varchar(30) NOT NULL,
    email varchar(50),
    -- fk
    student int,
    -- fk 
    constraint pk_user PRIMARY KEY (surrogate_id)
);

insert into user values (1,"stud1","stud1","password","stud1@iiitb.ac.in",1),(2,"admin1","admin1","password","admin1@iiitb.ac.in",NULL),(3,"sportscomm1","sportscomm1","password","sportscomm1@iiitb.ac.in",NULL),(4,"stud2","stud2","password","stud2@iiitb.ac.in",2);

create table equipment (
	surrogate_id int NOT NULL,
    equipment_id varchar(10),
    equipment_category varchar(30),
    sports_team TINYINT(1),
    -- tinyint 0 is false else is true 
    equipment_status varchar(30),
    equipment_description TEXT,
    constraint pk_equipment PRIMARY KEY (surrogate_id)
);

insert into equipment values (1,"F1","Football", 0 ,"available","Football is a very Popular game"),(2,"F2","Football", 1 ,"available","Football is a very Popular game"),(3,"BB1","Basketball", 0 ,"issued","Basketball is orange colored");

create table requests (
    surrogate_id int NOT NULL,
    request_id int,
    -- fk
    id_user int,
    id_equipment int,
    -- fk
    issue_date date,
    return_date date,
    request_status varchar(30),
    constraint pk_requests PRIMARY KEY (surrogate_id)
);

insert into requests values (1,1,1,1,'2021-10-02','2021-10-08',"closed"),(2,2,4,2,'2021-10-02',NULL,"open"),(3,3,4,3,'2021-10-02','2021-10-08',"closed");

create table user_role (
    surrogate_id int NOT NULL,
    -- fk
    id_user int,
    -- fk
    role varchar(20),
    constraint pk_user_role PRIMARY KEY (surrogate_id)
);

insert into user_role values (1,1,"student"),(2,2,"admin"),(3,3,"sportscomm"),(4,4,"student");

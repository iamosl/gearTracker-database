use geartracker_db;

alter table user 
ADD constraint fk_user_stud FOREIGN KEY (student) references student(surrogate_id) ON DELETE CASCADE;

alter table user
ADD COLUMN created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;

alter table student 
ADD constraint fk_stud_user FOREIGN KEY (surrogate_id) references user(student) ON DELETE CASCADE;

alter table student
ADD COLUMN created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;

alter table requests 
ADD constraint fk_req_user FOREIGN KEY (id_user) references user(surrogate_id) ON DELETE CASCADE;

alter table requests
ADD constraint fk_req_equip FOREIGN KEY (id_equipment) references equipment(surrogate_id) ON DELETE CASCADE;

alter table requests
ADD COLUMN created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;

alter table user_role 
ADD constraint fk_usro_user FOREIGN KEY (id_user) references user(surrogate_id) ON DELETE CASCADE;

alter table user_role 
ADD COLUMN created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;

alter table equipment
ADD COLUMN created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;


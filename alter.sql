use geartracker_db;

alter table user add constraint fk_user_stud FOREIGN KEY (student) references student(surrogate_id) ON DELETE CASCADE;
alter table student add constraint fk_stud_user FOREIGN KEY (surrogate_id) references user(surrogate_id) ON DELETE CASCADE;
alter table requests add constraint fk_req_user FOREIGN KEY (id_user) references user(surrogate_id) ON DELETE CASCADE;
alter table requests add constraint fk_req_equip FOREIGN KEY (id_equipment) references equipment(surrogate_id) ON DELETE CASCADE;
alter table user_role add constraint fk_usro_user FOREIGN KEY (id_user) references user(surrogate_id) ON DELETE CASCADE;

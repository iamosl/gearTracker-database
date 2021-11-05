use geartracker_db;

alter table user add constraint fk_user_stud FOREIGN KEY (student) references student(surrogate_id);
alter table requests add constraint fk_req_user FOREIGN KEY (id_user) references user(user_id);
alter table requests add constraint fk_req_equip FOREIGN KEY (id_equipment) references equipment(equipment_id);
alter table user_role add constraint fk_usro_user FOREIGN KEY (id_user) references user(user_id);


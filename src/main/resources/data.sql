insert 
into
    tb_parking_spot
    (apartment, block, brand_car, color_car, license_plate_car, model_car, parking_spot_number, registration_date, responsible_name, id) 
values
    ('201', '3', 'Hyundai', 'Grey', 'E98YLX', 'Tucson', '153', TIMESTAMP WITH TIME ZONE '2022-08-16T11:33:07.12345Z', 'Mario Miranda', 'f4d3c82f-58c8-47d7-97c5-f7cb905f7039');
    
insert 
into
    tb_parking_spot
    (apartment, block, brand_car, color_car, license_plate_car, model_car, parking_spot_number, registration_date, responsible_name, id) 
values
    ('201', '3', 'Ford', 'Grey', 'F09YLX', 'Mustang', '152', TIMESTAMP WITH TIME ZONE '2022-08-15T11:33:07.12345Z', 'Cristina Chan', 'de24f5ee-46a2-4ddf-ba74-1c511bcfd2e1');
    
insert
into
	tb_user
values
	('1a8ef5bc-66fa-4e92-a8e5-b74a73c31c7a','$2a$10$BEoq0mqT6NwWWBdTbyajAezQm7if4o..9n6A5KH/ZuyLynpWdrKzu','mariom');
	
insert
into
	tb_user
values
	('74ba2184-1a52-4c9f-a316-f0e49e028062','$2a$10$BEoq0mqT6NwWWBdTbyajAezQm7if4o..9n6A5KH/ZuyLynpWdrKzu','cristina');

insert into tb_role values('f4123803-867a-4add-ad22-779e8c0d943c', 'ROLE_ADMIN');
insert into tb_role values('43ebd692-91fe-41ee-83a3-cb95cb8cca4b', 'ROLE_USER');

insert into TB_USERS_ROLES (user_id, role_id) values('1a8ef5bc-66fa-4e92-a8e5-b74a73c31c7a', 'f4123803-867a-4add-ad22-779e8c0d943c');
insert into TB_USERS_ROLES (user_id, role_id) values('1a8ef5bc-66fa-4e92-a8e5-b74a73c31c7a', '43ebd692-91fe-41ee-83a3-cb95cb8cca4b');
insert into TB_USERS_ROLES (user_id, role_id) values('74ba2184-1a52-4c9f-a316-f0e49e028062', '43ebd692-91fe-41ee-83a3-cb95cb8cca4b');
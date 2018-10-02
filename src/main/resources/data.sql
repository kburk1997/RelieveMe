INSERT INTO regions (name) VALUES ('East Campus Athletic Village');
INSERT INTO regions (name) VALUES ('Freshman Hill');
INSERT INTO regions (name) VALUES ('Main Campus');

INSERT INTO building (proper_name, region_id) VALUES ('Houston Field House', 1);
INSERT INTO building (proper_name, region_id) VALUES ('Rensselaer Union', 2);
INSERT INTO building (proper_name, region_id) VALUES ('Walker Laboratory', 3);

INSERT INTO building_name (name, building_id) VALUES ('Union', 2);
INSERT INTO building_name (name, building_id) VALUES ('Student Union', 2);
INSERT INTO building_name (name, building_id) VALUES ('RPI Union', 2);

INSERT INTO floor (number, building_id) VALUES (1, 2);
INSERT INTO floor (number, building_id) VALUES (2, 2);
INSERT INTO floor (number, building_id) VALUES (3, 2);

INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/Union1.pdf', 2, 1);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/Union2.pdf', 2, 2);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/Union3.pdf', 2, 3);

/* TODO: add mock data (Student Union, building_id = 2) for table: bathroom*/
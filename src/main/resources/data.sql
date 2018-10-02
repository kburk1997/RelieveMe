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

/* TODO: add mock data (Student Union) for tables: floor_plan, bathroom*/
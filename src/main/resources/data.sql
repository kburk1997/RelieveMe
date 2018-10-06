INSERT INTO regions (name) VALUES ('East Campus Athletic Village');
INSERT INTO regions (name) VALUES ('Freshman Hill');
INSERT INTO regions (name) VALUES ('Main Campus');

INSERT INTO building (proper_name, region_id) VALUES ('Houston Field House', 1);
INSERT INTO building (proper_name, region_id) VALUES ('Rensselaer Union', 2);
INSERT INTO building (proper_name, region_id) VALUES ('Mueller Center', 2);
INSERT INTO building (proper_name, region_id) VALUES ('Commons Dining Hall', 2);
INSERT INTO building (proper_name, region_id) VALUES ('Walker Laboratory', 3);
INSERT INTO building (proper_name, region_id) VALUES ('Sage Laboratories', 3);
INSERT INTO building (proper_name, region_id) VALUES ('Sage Dining Hall', 3);
INSERT INTO building (proper_name, region_id) VALUES ('Ricketts', 3);

INSERT INTO building_name (name, building_id) VALUES ('Union', 2);
INSERT INTO building_name (name, building_id) VALUES ('Student Union', 2);
INSERT INTO building_name (name, building_id) VALUES ('RPI Union', 2);

INSERT INTO floor (number, building_id) VALUES (1, 2);
INSERT INTO floor (number, building_id) VALUES (2, 2);
INSERT INTO floor (number, building_id) VALUES (3, 2);

INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/Union1.pdf', 2, 1);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/Union2.pdf', 2, 2);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/Union3.pdf', 2, 3);

/* gender_type: male = 0, female = 1, gender-neutral = 2 */
INSERT INTO bathroom (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station)
VALUES (2, 1, 0, false, 'Next to games room', false, false, null, false);
INSERT INTO bathroom (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station)
VALUES (2, 1, 1, false, 'Next to Rathskeller and microwave', false, false, null, false);
INSERT INTO bathroom (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station)
VALUES (2, 1, 2, false, 'In Mother''s', false, false, null, false);
INSERT INTO bathroom (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station)
VALUES (2, 2, 1, false, 'Mock Bathroom 2nd Floor', false, false, null, false);
INSERT INTO bathroom (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station)
VALUES (2, 3, 2, true, 'Mock Bathroom 3rd Floor with all shelves, accessible, menstrual disposal, product type, and changing stations', true, true, 1, true);
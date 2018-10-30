INSERT INTO regions (name) VALUES ('East Campus Athletic Village');
INSERT INTO regions (name) VALUES ('Freshman Hill');
INSERT INTO regions (name) VALUES ('Main Campus');

INSERT INTO building (proper_name, region_id) VALUES ('Houston Field House', 1);
INSERT INTO building (proper_name, region_id) VALUES ('Rensselaer Union', 2);
INSERT INTO building (proper_name, region_id) VALUES ('Mueller Center', 2);
INSERT INTO building (proper_name, region_id) VALUES ('Commons Dining Hall', 2);
INSERT INTO building (proper_name, region_id) VALUES ('Walker Laboratory', 3);
INSERT INTO building (proper_name, region_id) VALUES ('Russell Sage Laboratory', 3);
INSERT INTO building (proper_name, region_id) VALUES ('Russell Sage Dining Hall', 3);
INSERT INTO building (proper_name, region_id) VALUES ('Ricketts Building', 3);

/* building_id is based on the order this building is added into building table */
INSERT INTO building_name (name, building_id) VALUES ('Houston Field House', 1);
INSERT INTO building_name (name, building_id) VALUES ('Rensselaer Union', 2);
INSERT INTO building_name (name, building_id) VALUES ('Union', 2);
INSERT INTO building_name (name, building_id) VALUES ('Student Union', 2);
INSERT INTO building_name (name, building_id) VALUES ('RPI Union', 2);
INSERT INTO building_name (name, building_id) VALUES ('Mueller Center', 3);
INSERT INTO building_name (name, building_id) VALUES ('Mueller', 3);
INSERT INTO building_name (name, building_id) VALUES ('Commons Dining Hall', 4);
INSERT INTO building_name (name, building_id) VALUES ('Commons', 4);
INSERT INTO building_name (name, building_id) VALUES ('Walker Laboratory', 5);
INSERT INTO building_name (name, building_id) VALUES ('Walker Lab', 5);
INSERT INTO building_name (name, building_id) VALUES ('Walker', 5);
INSERT INTO building_name (name, building_id) VALUES ('Russell Sage Laboratory', 6);
INSERT INTO building_name (name, building_id) VALUES ('Sage Laboratory', 6);
INSERT INTO building_name (name, building_id) VALUES ('Sage Lab', 6);
INSERT INTO building_name (name, building_id) VALUES ('Russell Sage Dining Hall', 7);
INSERT INTO building_name (name, building_id) VALUES ('Sage Dining Hall', 7);
INSERT INTO building_name (name, building_id) VALUES ('Ricketts Building', 8);
INSERT INTO building_name (name, building_id) VALUES ('Ricketts', 8);

/* RPI Union */
INSERT INTO floor (number, building_id) VALUES (1, 2);
INSERT INTO floor (number, building_id) VALUES (2, 2);
INSERT INTO floor (number, building_id) VALUES (3, 2);

/* Houston Field House */
INSERT INTO floor (number, building_id) VALUES (3, 1);

/* basement (floor 0) and rooftop are not added into floor plan because students cannot get there */
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/Houston%20Field%20House%20100%20Level.pdf', 1, 1);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/Houston%20Field%20House%20200%20level.pdf', 1, 2);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/Houston%20Field%20House%20300%20level.pdf', 1, 3);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/Union1.pdf', 2, 1);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/Union2.pdf', 2, 2);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/Union3.pdf', 2, 3);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/Mueller1000.pdf', 3, 1);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/Mueller2000.pdf', 3, 2);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/Commons1.pdf', 4, 1);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/Commons2.pdf', 4, 2);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/WalkerLab.1000.pdf', 5, 1);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/WalkerLab.2000.pdf', 5, 2);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/WalkerLab.3000.pdf', 5, 3);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/WalkerLab.4000.pdf', 5, 4);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/WalkerLab.5000.pdf', 5, 5);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/WalkerLab.6000.pdf', 5, 6);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/Sagelab1000.pdf', 6, 1);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/Sagelab2000.pdf', 6, 2);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/Sagelab3000.pdf', 6, 3);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/Sagelab4000.pdf', 6, 4);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/Sagelab5000.pdf', 6, 5);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/Sage%20DH%20Main%20Floor.pdf', 7, 1);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/Ricketts100.pdf', 8, 1);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/Ricketts200.pdf', 8, 2);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/Ricketts300.pdf', 8, 3);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/Ricketts400.pdf', 8, 4);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/Ricketts500.pdf', 8, 5);

/* gender_type: male = 0, female = 1, gender-neutral = 2 */
/* RPI Union */
/* 2 true and 3 false for ongoing_bathroom_issue */
/* added in random numbers for num_negative_rating and num_positive_rating */
INSERT INTO bathroom (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES (2, 1, 0, false, 'Next to games room', false, false, null, false, false, 1, 2);
INSERT INTO bathroom (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES (2, 1, 1, false, 'Next to Rathskeller and microwave', false, false, null, false, true, 3, 4);
INSERT INTO bathroom (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES (2, 1, 2, false, 'In Mother''s', false, false, null, false, false, 3, 42);
INSERT INTO bathroom (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES (2, 2, 1, false, 'Mock Bathroom 2nd Floor', false, false, null, false, true, 100, 99);
INSERT INTO bathroom (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES (2, 3, 2, true, 'Mock Bathroom 3rd Floor with all shelves, accessible, menstrual disposal, product type, and changing stations', true, true, 1, true, false, 12, 34);

/* Houston Field House */
/* 1 true */
/* default 0 for num_negative_rating and num_positive_rating */
INSERT INTO bathroom (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue)
VALUES (1, 3, 1, true, 'Mock wheelchair accessible only bathroom', false, false, null, false, true);
/*---------------*/
/* REGION DATA   */
/*---------------*/
INSERT INTO regions (name) VALUES ('East Campus Athletic Village');
INSERT INTO regions (name) VALUES ('Freshman Hill');
INSERT INTO regions (name) VALUES ('Main Campus');

/*---------------*/
/* BUILDING DATA */
/*---------------*/
/* ADD BUILDINGS TO THE END SO AS TO PRESERVE BUILDING IDs */
INSERT INTO building (building_id, proper_name, region_id) VALUES (1, 'Houston Field House', 1);

INSERT INTO building (building_id, proper_name, region_id) VALUES (2, 'Admissions', 2);
INSERT INTO building (building_id, proper_name, region_id) VALUES (3, 'Alumni Sports & Recreation Center', 2);
INSERT INTO building (building_id, proper_name, region_id) VALUES (4, 'Mueller Center', 2);
INSERT INTO building (building_id, proper_name, region_id) VALUES (5, 'Public Safety', 2);
INSERT INTO building (building_id, proper_name, region_id) VALUES (6, 'Rensselaer Union', 2);
INSERT INTO building (building_id, proper_name, region_id) VALUES (7, 'Commons Dining Hall', 2);

INSERT INTO building (building_id, proper_name, region_id) VALUES (8, 'Academy Hall', 3);
INSERT INTO building (building_id, proper_name, region_id) VALUES (9, 'Amos Eaton', 3);
INSERT INTO building (building_id, proper_name, region_id) VALUES (10, 'Carnegie Building', 3);
INSERT INTO building (building_id, proper_name, region_id) VALUES (11, 'Center for Biotechnology and Interdisciplinary Studies', 3);
INSERT INTO building (building_id, proper_name, region_id) VALUES (12, 'Curtis R. Priem Experimental Media and Performing Arts Center', 3);
INSERT INTO building (building_id, proper_name, region_id) VALUES (13, 'Darrin Communications Center', 3);
INSERT INTO building (building_id, proper_name, region_id) VALUES (14, 'Folsom Library', 3);
INSERT INTO building (building_id, proper_name, region_id) VALUES (15, 'Greene Building', 3);
INSERT INTO building (building_id, proper_name, region_id) VALUES (16, 'Jonsson Engineering Center', 3);
INSERT INTO building (building_id, proper_name, region_id) VALUES (17, 'Jonsson-Rowland Science Center', 3);
INSERT INTO building (building_id, proper_name, region_id) VALUES (18, 'Lally Hall', 3);
INSERT INTO building (building_id, proper_name, region_id) VALUES (19, 'Low Center for Industrial Innovation', 3);
INSERT INTO building (building_id, proper_name, region_id) VALUES (20, 'Pittsburgh Building', 3);
INSERT INTO building (building_id, proper_name, region_id) VALUES (21, 'Playhouse', 3);
INSERT INTO building (building_id, proper_name, region_id) VALUES (22, 'Ricketts Building', 3);
INSERT INTO building (building_id, proper_name, region_id) VALUES (23, 'Russell Sage Dining Hall', 3);
INSERT INTO building (building_id, proper_name, region_id) VALUES (24, 'Russell Sage Laboratory', 3);
INSERT INTO building (building_id, proper_name, region_id) VALUES (25, 'Troy Building', 3);
INSERT INTO building (building_id, proper_name, region_id) VALUES (26, 'Voorhees Computing Center', 3);
INSERT INTO building (building_id, proper_name, region_id) VALUES (27, 'Walker Laboratory', 3);
INSERT INTO building (building_id, proper_name, region_id) VALUES (28, 'West Hall', 3);
INSERT INTO building (building_id, proper_name, region_id) VALUES (29, '87 Gymnasium', 3);

/*--------------------*/
/* BUILDING NAME DATA */
/*--------------------*/

/* ------------ECAV --------------- */
/* Houston Field House */
INSERT INTO building_name (name, building_id) VALUES ('Houston Field House', 1);
/* ------------Freshman Hill --------------- */
/* Admissions */
INSERT INTO building_name (name, building_id) VALUES ('Admissions', 2);
INSERT INTO building_name (name, building_id) VALUES ('Rensselaer Admissions', 2);
/* Armory */
INSERT INTO building_name (name, building_id) VALUES ('Alumni Sports & Recreation Center', 3);
INSERT INTO building_name (name, building_id) VALUES ('AS+RC', 3);
INSERT INTO building_name (name, building_id) VALUES ('Armory', 3);
/* Commons */
INSERT INTO building_name (name, building_id) VALUES ('Commons Dining Hall', 7);
INSERT INTO building_name (name, building_id) VALUES ('Commons', 7);
/* Mueller */
INSERT INTO building_name (name, building_id) VALUES ('Mueller Center', 4);
INSERT INTO building_name (name, building_id) VALUES ('Mueller', 4);
/* Public Safety */
INSERT INTO building_name (name, building_id) VALUES ('Public Safety', 5);
INSERT INTO building_name (name, building_id) VALUES ('Pub Safe', 5);
/* Union */
INSERT INTO building_name (name, building_id) VALUES ('Rensselaer Union', 6);
INSERT INTO building_name (name, building_id) VALUES ('Union', 6);
INSERT INTO building_name (name, building_id) VALUES ('Student Union', 6);
INSERT INTO building_name (name, building_id) VALUES ('RPI Union', 6);

/* ------------Academic --------------- */
/* Academy Hall */
INSERT INTO building_name (name, building_id) VALUES ('Academy Hall', 8);
INSERT INTO building_name (name, building_id) VALUES ('Academy', 8);
/* Amos Eaton */
INSERT INTO building_name (name, building_id) VALUES ('Amos Eaton', 9);
INSERT INTO building_name (name, building_id) VALUES ('Eaton', 9);
/* Carnegie Building */
INSERT INTO building_name (name, building_id) VALUES ('Carnegie Building', 10);
INSERT INTO building_name (name, building_id) VALUES ('Carnegie', 10);
/* CBIS */
INSERT INTO building_name (name, building_id) VALUES ('Center for Biotechnology and Interdisciplinary Studies', 11);
INSERT INTO building_name (name, building_id) VALUES ('CBIS', 11);
/* EMPAC */
INSERT INTO building_name (name, building_id) VALUES ('Curtis R. Priem Experimental Media and Performing Arts Center', 12);
INSERT INTO building_name (name, building_id) VALUES ('EMPAC', 12);
/* DCC */
INSERT INTO building_name (name, building_id) VALUES ('Darrin Communications Center', 13);
INSERT INTO building_name (name, building_id) VALUES ('Darrin', 13);
INSERT INTO building_name (name, building_id) VALUES ('DCC', 13);
/*Library */
INSERT INTO building_name (name, building_id) VALUES ('Folsom Library', 14);
INSERT INTO building_name (name, building_id) VALUES ('Library', 14);
/* Greene */
INSERT INTO building_name (name, building_id) VALUES ('Greene Building', 15);
INSERT INTO building_name (name, building_id) VALUES ('Greene', 15);
/* JEC */
INSERT INTO building_name (name, building_id) VALUES ('Jonsson Engineering Center', 16);
INSERT INTO building_name (name, building_id) VALUES ('JEC', 16);
/* JROWL */
INSERT INTO building_name (name, building_id) VALUES ('Jonsson-Rowland Science Center', 17);
INSERT INTO building_name (name, building_id) VALUES ('J-ROWL', 17);

/* Lally */
INSERT INTO building_name (name, building_id) VALUES ('Lally Hall', 18);
INSERT INTO building_name (name, building_id) VALUES ('Lally Building', 18);
INSERT INTO building_name (name, building_id) VALUES ('Lally', 18);
/* CII */
INSERT INTO building_name (name, building_id) VALUES ('Low Center for Industrial Innovation', 19);
INSERT INTO building_name (name, building_id) VALUES ('Low', 19);
INSERT INTO building_name (name, building_id) VALUES ('CII', 19);
/* Pittsburg */
INSERT INTO building_name (name, building_id) VALUES ('Pittsburgh Building', 20);
INSERT INTO building_name (name, building_id) VALUES ('Lally School of Management',20);
INSERT INTO building_name (name, building_id) VALUES ('Pittsburgh', 20);
/* Playhouse */
INSERT INTO building_name (name, building_id) VALUES ('Playhouse', 25);
INSERT INTO building_name (name, building_id) VALUES ('RPI Playhouse', 25);
/* Ricketts */
INSERT INTO building_name (name, building_id) VALUES ('Ricketts Building', 22);
INSERT INTO building_name (name, building_id) VALUES ('Ricketts', 22);
/* Russell Sage Lab */
INSERT INTO building_name (name, building_id) VALUES ('Russell Sage Laboratory', 24);
INSERT INTO building_name (name, building_id) VALUES ('Sage Laboratory', 24);
INSERT INTO building_name (name, building_id) VALUES ('Sage Lab', 24);
/* Russell Sage DH */
INSERT INTO building_name (name, building_id) VALUES ('Russell Sage Dining Hall', 23);
INSERT INTO building_name (name, building_id) VALUES ('Sage Dining Hall', 23);
INSERT INTO building_name (name, building_id) VALUES ('RSDH', 23);
/* Troy Building */
INSERT INTO building_name (name, building_id) VALUES ('Troy Building', 25);
INSERT INTO building_name (name, building_id) VALUES ('Troy', 25);
/* VCC */
INSERT INTO building_name (name, building_id) VALUES ('Voorhees Computing Center', 26);
INSERT INTO building_name (name, building_id) VALUES ('Voorhees', 26);
INSERT INTO building_name (name, building_id) VALUES ('VCC', 26);
/* Walker */
INSERT INTO building_name (name, building_id) VALUES ('Walker Laboratory', 27);
INSERT INTO building_name (name, building_id) VALUES ('Walker Lab', 27);
INSERT INTO building_name (name, building_id) VALUES ('Walker', 27);
/* West Hall */
INSERT INTO building_name (name, building_id) VALUES ('West Hall', 28);
INSERT INTO building_name (name, building_id) VALUES ('West', 28);
/* 87 Gym */
INSERT INTO building_name (name, building_id) VALUES ('87 Gymnasium', 29);
INSERT INTO building_name (name, building_id) VALUES ('87 Gym', 29);

/*------------*/
/* FLOOR DATA */
/*------------*/
/* Commons */
INSERT INTO floor (number, building_id) VALUES (1, 7);
INSERT INTO floor (number, building_id) VALUES (2, 7);
/* RPI Union */
INSERT INTO floor (number, building_id) VALUES (1, 6);
INSERT INTO floor (number, building_id) VALUES (2, 6);
INSERT INTO floor (number, building_id) VALUES (3, 6);
/* Mueller */
INSERT INTO floor (number, building_id) VALUES (1, 4);
INSERT INTO floor (number, building_id) VALUES (2, 4);
/* Amos Eaton */
INSERT INTO floor (number, building_id) VALUES (1, 9);
INSERT INTO floor (number, building_id) VALUES (2, 9);
INSERT INTO floor (number, building_id) VALUES (3, 9);
INSERT INTO floor (number, building_id) VALUES (4, 9);
/*JROWL */
INSERT INTO floor (number, building_id) VALUES (0, 17);
INSERT INTO floor (number, building_id) VALUES (1, 17);
INSERT INTO floor (number, building_id) VALUES (2, 17);
INSERT INTO floor (number, building_id) VALUES (3, 17);
/* Lally */
INSERT INTO floor (number, building_id) VALUES (0, 18);
INSERT INTO floor (number, building_id) VALUES (1, 18);
INSERT INTO floor (number, building_id) VALUES (2, 18);
INSERT INTO floor (number, building_id) VALUES (3, 18);
/* Ricketts */
INSERT INTO floor (number, building_id) VALUES (1, 22);
INSERT INTO floor (number, building_id) VALUES (2, 22);
INSERT INTO floor (number, building_id) VALUES (3, 22);
INSERT INTO floor (number, building_id) VALUES (4, 22);
INSERT INTO floor (number, building_id) VALUES (5, 22);
/* Sage Lab */
INSERT INTO floor (number, building_id) VALUES (1, 24);
INSERT INTO floor (number, building_id) VALUES (2, 24);
INSERT INTO floor (number, building_id) VALUES (3, 24);
INSERT INTO floor (number, building_id) VALUES (4, 24);
INSERT INTO floor (number, building_id) VALUES (5, 24);
/* Sage DH */
INSERT INTO floor (number, building_id) VALUES (1, 23);
/* VCC */
INSERT INTO floor (number, building_id) VALUES (1, 26);
INSERT INTO floor (number, building_id) VALUES (2, 26);
INSERT INTO floor (number, building_id) VALUES (3, 26);
/* Walker */
INSERT INTO floor (number, building_id) VALUES (1, 27);
INSERT INTO floor (number, building_id) VALUES (2, 27);
INSERT INTO floor (number, building_id) VALUES (3, 27);
INSERT INTO floor (number, building_id) VALUES (4, 27);
INSERT INTO floor (number, building_id) VALUES (5, 27);
INSERT INTO floor (number, building_id) VALUES (6, 27);

/* BELOW IS MOCK DATA */
/* Houston Field House */
INSERT INTO floor (number, building_id) VALUES (3, 1);

/*-----------------*/
/* FLOOR PLAN DATA */
/*-----------------*/
/* basement (floor 0) and rooftop, and other floors not accessible to students are not listed */

/* Houston Field House */
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/Houston%20Field%20House%20100%20Level.pdf', 1, 1);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/Houston%20Field%20House%20200%20level.pdf', 1, 2);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/Houston%20Field%20House%20300%20level.pdf', 1, 3);

/* RPI Union */
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/Union1.pdf', 6, 1);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/Union2.pdf', 6, 2);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/Union3.pdf', 6, 3);

/* Mueller */
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/Mueller1000.pdf', 4, 1);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/Mueller2000.pdf', 4, 2);

/* Commons */
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/Commons1.pdf', 7, 1);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/Commons2.pdf', 7, 2);

/* Amos Eaton */
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/AmosEaton100.pdf', 9, 1);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/AmosEaton200.pdf', 9, 2);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/AmosEaton300.pdf', 9, 3);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/AmosEaton400.pdf', 9, 4);

/* J-Rowl */
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/JonssonRowlandBmt.pdf', 17, 0);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/JonssonRowland1.pdf', 17, 1);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/JonssonRowland2.pdf', 17, 2);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/JonssonRowland3.pdf', 17, 3);

/* Lally */
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/LallyHall000.pdf', 18, 0);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/LallyHall100.pdf', 18, 1);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/LallyHall200.pdf', 18, 2);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/LallyHall300.pdf', 18, 3);

/* Ricketts */
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/Ricketts100.pdf', 22, 1);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/Ricketts200.pdf', 22, 2);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/Ricketts300.pdf', 22, 3);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/Ricketts400.pdf', 22, 4);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/Ricketts500.pdf', 22, 5);

/* Sage Lab */
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/Sagelab1000.pdf', 24, 1);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/Sagelab2000.pdf', 24, 2);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/Sagelab3000.pdf', 24, 3);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/Sagelab4000.pdf', 24, 4);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/Sagelab5000.pdf', 24, 5);

/* Sage DH */
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/Sage%20DH%20Main%20Floor.pdf', 8, 1);

/* VCC */
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/Voorhees1.pdf', 26, 1);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/Voorhees2.pdf', 26, 2);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/Voorhees3.pdf', 26, 3);

/* Walker */
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/WalkerLab.1000.pdf', 27, 1);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/WalkerLab.2000.pdf', 27, 2);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/WalkerLab.3000.pdf', 27, 3);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/WalkerLab.4000.pdf', 27, 4);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/WalkerLab.5000.pdf', 27, 5);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/WalkerLab.6000.pdf', 27, 6);

/*---------------*/
/* BATHROOM DATA */
/*---------------*/
/* gender_type: male = 0, female = 1, gender-neutral = 2 */
/* menstrual product type: tampon = 0, pad = 1 */
/*-----------*/
/* RPI Union */
/*-----------*/
/* 2 true and 3 false for ongoing_bathroom_issue */
/* added in random numbers for num_negative_rating and num_positive_rating */

/* Floor 1 */
INSERT INTO bathroom (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES (6, 1, 0, true, 'Next to Rathskeller and Game Room', false, false, null, false, false, 1, 2);
INSERT INTO bathroom (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES (6, 1, 1, true, 'Next to Ben and Jerry''s and Rathskeller''s', true, true, 1, false, true, 3, 4);
INSERT INTO bathroom (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES (6, 1, 2, false, 'In Mother''s', false, false, null, false, false, 3, 42);
/* Floor 2 */
INSERT INTO bathroom (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES (6, 2, 0, false, 'Next to McNeil room and in corner facing Public Safety', false, false, null, false, true, 100, 99);
INSERT INTO bathroom (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES (6, 2, 1, false, 'Next to McNeil room and in corner facing Public Safety', true, true, 0, true, false, 12, 34);
/* Floor 3 */
INSERT INTO bathroom (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES (6, 3, 0, false, 'Next to Clubhouse Pub', false, false, null, false, true, 100, 99);
INSERT INTO bathroom (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES (6, 3, 1, false, 'Next to Clubhouse Pub', true, true, true, 1, false, false, 12, 34);

/*-----------*/
/*----------------------*/
/* Amos Eaton bathrooms */
/*----------------------*/
/* Floor 1 */
INSERT INTO bathroom (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue)
VALUES (9, 1, 0, false, 'Down right-hand stairway and next to AE123', false, false, null, false, false);
INSERT INTO bathroom (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue)
VALUES (9, 1, 2, true, 'Down right-hand stairway and next to AE123', false, false, null, false, false);
INSERT INTO bathroom (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue)
VALUES (9, 1, 1, false, 'Next to AE103', true, true, null, false, false);
/* Floor 2 */
INSERT INTO bathroom (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue)
VALUES (9, 2, 0, false, 'Next to AE204', false, false, null, false, false);
/* Floor 3 */
INSERT INTO bathroom (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue)
VALUES (9, 3, 1, false, 'Next to housekeeping', true, true, null, false, false);
/* Floor 4 */
INSERT INTO bathroom (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue)
VALUES (9, 4, 0, false, 'In dead end corridor to right of lounge', false, false, null, false, false);

/*-----------------*/
/* JRowl bathrooms */
/*-----------------*/
/* Roof and penthouse omitted because students cannot go there */
/* Floor 0 (Basement) */
INSERT INTO bathroom (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue)
VALUES (17, 0, 0, true, 'across from elevator next to  custodial closet', false, false, null, false, false);
/* Floor 1 */
INSERT INTO bathroom (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue)
VALUES (17, 1, 1, true, 'Room 1C43, near Physics Lounge', false, true, null, false, false);
INSERT INTO bathroom (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue)
VALUES (17, 1, 0, true, 'Room 1C47, next to custodial closet', false, false, null, false, false);
/* Floor 2 */
INSERT INTO bathroom (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue)
VALUES (17, 2, 0, true, 'Room 2C47, next to custodial closet', false, false, null, false, false);
/* Floor 3 */
INSERT INTO bathroom (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue)
VALUES (17, 3, 1, true, 'Room 3C43, across from electrical room', false, true, null, false, false);
INSERT INTO bathroom (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue)
VALUES (17, 3, 0, true, 'Room 3C47, next to custodial closet', false, false, null, false, false);

/*-----------------*/
/* Lally bathrooms */
/*-----------------*/
/* Floor 0 */
INSERT INTO bathroom (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue)
VALUES (18, 0, 0, false, 'Left from stairs, next to environmental specialist door', false, false, null, false, false);

/* Floor 2 */
INSERT INTO bathroom (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue)
VALUES (18, 2, 1, false, 'In corridor next to Lally 210 and environmentalist specialist door', false, true, null, false, false);

/*---------*/
/* VCC  	 */
/*---------*/
/* default 0 for num_positive_rating and num_negative_rating  */
/* made some assumptions for men's bathroom data */

/* Floor 1 (basement level)*/
INSERT INTO bathroom (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES (26, 1, 2, false, 'basement Room 111A', false, false, null, false, false, 0, 0);

/* Floor 2  (main level) */
INSERT INTO bathroom (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES (26, 2, 1, true, 'Across from help desk (Rm. 203)', true, true, null, false, false, 0, 0);
INSERT INTO bathroom (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES (26, 2, 0, true, 'Across from help desk (Rm. 204)', true, false, null, false, false, 0, 0);

/* Floor 3 (upper level) */
INSERT INTO bathroom (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES (26, 3, 1, true, 'Next to elevator (Rm. 302)', true, true, null, false, false, 0, 0);
INSERT INTO bathroom (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES (26, 3, 0, true, 'Next to front staircase (Rm. 324)', true, false, null, false, false, 0, 0);

/* BELOW IS MOCK DATA */
/* Houston Field House */
/* 1 true */
/* default 0 for num_negative_rating and num_positive_rating */
INSERT INTO bathroom (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue)
VALUES (1, 3, 1, true, 'Mock wheelchair accessible only bathroom', false, false, null, false, true);
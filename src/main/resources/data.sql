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
INSERT INTO building (proper_name, region_id) VALUES ('Houston Field House MOCK', 1);

INSERT INTO building (proper_name, region_id) VALUES ('Admissions', 2);
INSERT INTO building (proper_name, region_id) VALUES ('Alumni Sports & Recreation Center', 2);
INSERT INTO building (proper_name, region_id) VALUES ('Mueller Center', 2);
INSERT INTO building (proper_name, region_id) VALUES ('Public Safety', 2);
INSERT INTO building (proper_name, region_id) VALUES ('Rensselaer Union', 2);


/* TODO: remove mock data after real data is gathered */
INSERT INTO building (proper_name, region_id) VALUES ('Mueller Center MOCK', 2);
INSERT INTO building (proper_name, region_id) VALUES ('Commons Dining Hall MOCK', 2);

INSERT INTO building (proper_name, region_id) VALUES ('Academy Hall', 3);
INSERT INTO building (proper_name, region_id) VALUES ('Amos Eaton', 3);
INSERT INTO building (proper_name, region_id) VALUES ('Carnegie Building', 3);
INSERT INTO building (proper_name, region_id) VALUES ('Center for Biotechnology and Interdisciplinary Studies', 3);
INSERT INTO building (proper_name, region_id) VALUES ('Curtis R. Priem Experimental Media and Performing Arts Center', 3);
INSERT INTO building (proper_name, region_id) VALUES ('Darrin Communcations Center', 3);
INSERT INTO building (proper_name, region_id) VALUES ('Folsom Library', 3);
INSERT INTO building (proper_name, region_id) VALUES ('Greene Building', 3);
INSERT INTO building (proper_name, region_id) VALUES ('Jonsson Engineering Center', 3);
INSERT INTO building (proper_name, region_id) VALUES ('Jonsson-Rowland Science Center', 3);
INSERT INTO building (proper_name, region_id) VALUES ('Lally Hall', 3);
INSERT INTO building (proper_name, region_id) VALUES ('Low Center for Industrial Innovation', 3);
INSERT INTO building (proper_name, region_id) VALUES ('Pittsburg Building', 3);
INSERT INTO building (proper_name, region_id) VALUES ('Playhouse', 3);
INSERT INTO building (proper_name, region_id) VALUES ('Ricketts Building', 3);
INSERT INTO building (proper_name, region_id) VALUES ('Russell Sage Dining Hall', 3);
INSERT INTO building (proper_name, region_id) VALUES ('Russell Sage Laboratory', 3);
INSERT INTO building (proper_name, region_id) VALUES ('Troy Building', 3);
INSERT INTO building (proper_name, region_id) VALUES ('Voorhees Computing Center', 3);
INSERT INTO building (proper_name, region_id) VALUES ('Walker Laboratory', 3);
INSERT INTO building (proper_name, region_id) VALUES ('West Hall', 3);
INSERT INTO building (proper_name, region_id) VALUES ('87 Gymnasium', 3);

/* TODO: remove mock data after real data is gathered */
INSERT INTO building (proper_name, region_id) VALUES ('Walker Laboratory MOCK', 3);
INSERT INTO building (proper_name, region_id) VALUES ('Russell Sage Dining Hall MOCK', 3);
INSERT INTO building (proper_name, region_id) VALUES ('Ricketts Building MOCK', 3)


/*--------------------*/
/* BUILDING NAME DATA */
/*--------------------*/

/* ------------ECAV --------------- * /
/* Houston Field House */
INSERT INTO building_name (name, building_id) VALUES ('Houston Field House MOCK', 1);
INSERT INTO building_name (name, building_id) VALUES ('Houston Field House', 1);


/* ------------Freshman Hill --------------- */
/* Admissions */
INSERT INTO building_name (name, building_id) VALUES ('Admissions', 12);
INSERT INTO building_name (name, building_id) VALUES ('Rensselaer Admissions', 12);
/* Armory */
INSERT INTO building_name (name, building_id) VALUES ('Alumni Sports & Recreation Center', 13);
INSERT INTO building_name (name, building_id) VALUES ('AS+RC', 13);
INSERT INTO building_name (name, building_id) VALUES ('Armory', 13);
/* Commons */
INSERT INTO building_name (name, building_id) VALUES ('Commons Dining Hall MOCK', 4);
INSERT INTO building_name (name, building_id) VALUES ('Commons Dining Hall', 4);
INSERT INTO building_name (name, building_id) VALUES ('Commons', 4);
/* Mueller */
INSERT INTO building_name (name, building_id) VALUES ('Mueller Center MOCK', 3);
INSERT INTO building_name (name, building_id) VALUES ('Mueller Center', 3);
INSERT INTO building_name (name, building_id) VALUES ('Mueller', 3);
/* Public Safety */
INSERT INTO building_name (name, building_id) VALUES ('Public Safety', 14);
INSERT INTO building_name (name, building_id) VALUES ('Pub Safe', 14);
/* Union */
INSERT INTO building_name (name, building_id) VALUES ('Rensselaer Union', 2);
INSERT INTO building_name (name, building_id) VALUES ('Union', 2);
INSERT INTO building_name (name, building_id) VALUES ('Student Union', 2);
INSERT INTO building_name (name, building_id) VALUES ('RPI Union', 2);

/* ------------Academic --------------- * /

/* Academy Hall */
INSERT INTO building_name (name, building_id) VALUES ('Academy Hall', 14);
INSERT INTO building_name (name, building_id) VALUES ('Academy', 14);
/* Amos Eaton */
INSERT INTO building_name (name, building_id) VALUES ('Amos Eaton', 5);
INSERT INTO building_name (name, building_id) VALUES ('Eaton', 5);
/* Carnegie Building */
INSERT INTO building_name (name, building_id) VALUES ('Carnegie Building', 15);
INSERT INTO building_name (name, building_id) VALUES ('Carnegie', 15);
/* CBIS */
INSERT INTO building_name (name, building_id) VALUES ('Center for Biotechnology and Interdisciplinary Studies', 16);
INSERT INTO building_name (name, building_id) VALUES ('CBIS', 16);
/* EMPAC */
INSERT INTO building_name (name, building_id) VALUES ('Curtis R. Priem Experimental Media & Performing Arts Center', 17);
INSERT INTO building_name (name, building_id) VALUES ('EMPAC', 17);
/* DCC */
INSERT INTO building_name (name, building_id) VALUES ('Darrin Communications Center', 18);
INSERT INTO building_name (name, building_id) VALUES ('Darrin', 18);
INSERT INTO building_name (name, building_id) VALUES ('DCC', 18);
/*Library */
INSERT INTO building_name (name, building_id) VALUES ('Folsom Library', 19);
INSERT INTO building_name (name, building_id) VALUES ('Library', 19);
/* Greene */
INSERT INTO building_name (name, building_id) VALUES ('Greene Building', 20);
INSERT INTO building_name (name, building_id) VALUES ('Greene', 20);
/* JEC */
INSERT INTO building_name (name, building_id) VALUES ('Jonsson Engineering Center', 21);
INSERT INTO building_name (name, building_id) VALUES ('JEC', 21);
/* JROWL */
INSERT INTO building_name (name, building_id) VALUES ('Jonsson-Rowland Science Center', 22);
INSERT INTO building_name (name, building_id) VALUES ('J-ROWL', 22);
/* Lally */
INSERT INTO building_name (name, building_id) VALUES ('Lally Hall', 10);
INSERT INTO building_name (name, building_id) VALUES ('Lally Building', 10);
INSERT INTO building_name (name, building_id) VALUES ('Lally', 10);
/* CII */
INSERT INTO building_name (name, building_id) VALUES ('Low Center for Industrial Innovation', 23);
INSERT INTO building_name (name, building_id) VALUES ('Low', 23);
INSERT INTO building_name (name, building_id) VALUES ('CII', 23);
/* Pittsburg */
INSERT INTO building_name (name, building_id) VALUES ('Pittsburgh Building', 24);
INSERT INTO building_name (name, building_id) VALUES ('Lally School of Management',24);
INSERT INTO building_name (name, building_id) VALUES ('Pittsburgh', 24);
/* Playhouse */
INSERT INTO building_name (name, building_id) VALUES ('Playhouse', 25);
INSERT INTO building_name (name, building_id) VALUES ('RPI Playhouse', 25);
/* Ricketts */
INSERT INTO building_name (name, building_id) VALUES ('Ricketts Building MOCK', 9);
INSERT INTO building_name (name, building_id) VALUES ('Ricketts Building', 9);
INSERT INTO building_name (name, building_id) VALUES ('Ricketts', 9);
/* Russell Sage Lab */
INSERT INTO building_name (name, building_id) VALUES ('Russell Sage Laboratory MOCK', 7);
INSERT INTO building_name (name, building_id) VALUES ('Russell Sage Laboratory', 7);
INSERT INTO building_name (name, building_id) VALUES ('Sage Laboratory', 7);
INSERT INTO building_name (name, building_id) VALUES ('Sage Lab', 7);
/* Russell Sage DH */
INSERT INTO building_name (name, building_id) VALUES ('Russell Sage Dining Hall MOCK', 8);
INSERT INTO building_name (name, building_id) VALUES ('Russell Sage Dining Hall', 8);
INSERT INTO building_name (name, building_id) VALUES ('Sage Dining Hall', 8);
INSERT INTO building_name (name, building_id) VALUES ('RSDH', 8);
/* Troy Building */
INSERT INTO building_name (name, building_id) VALUES ('Troy Building', 26);
INSERT INTO building_name (name, building_id) VALUES ('Troy', 26);
/* VCC */
INSERT INTO building_name (name, building_id) VALUES ('Voorhees Computing Center', 11);
INSERT INTO building_name (name, building_id) VALUES ('Voorhees', 11);
INSERT INTO building_name (name, building_id) VALUES ('VCC', 11);
/* Walker */
INSERT INTO building_name (name, building_id) VALUES ('Walker Laboratory MOCK', 6);
INSERT INTO building_name (name, building_id) VALUES ('Walker Laboratory', 6);
INSERT INTO building_name (name, building_id) VALUES ('Walker Lab', 6);
INSERT INTO building_name (name, building_id) VALUES ('Walker', 6);
/* West Hall */
INSERT INTO building_name (name, building_id) VALUES ('West Hall', 27);
INSERT INTO building_name (name, building_id) VALUES ('West', 27);
/* 87 Gym */
INSERT INTO building_name (name, building_id) VALUES ('87 Gymnasium', 28);
INSERT INTO building_name (name, building_id) VALUES ('87 Gym', 28);

/*------------*/
/* FLOOR DATA */
/*------------*/
/* RPI Union */
INSERT INTO floor (number, building_id) VALUES (1, 2);
INSERT INTO floor (number, building_id) VALUES (2, 2);
INSERT INTO floor (number, building_id) VALUES (3, 2);

/* Amos Eaton */
INSERT INTO floor (number, building_id) VALUES (1, 5);
INSERT INTO floor (number, building_id) VALUES (2, 5);
INSERT INTO floor (number, building_id) VALUES (3, 5);
INSERT INTO floor (number, building_id) VALUES (4, 5);

/* Lally */
INSERT INTO floor (number, building_id) VALUES (0, 10);
INSERT INTO floor (number, building_id) VALUES (1, 10);
INSERT INTO floor (number, building_id) VALUES (2, 10);
INSERT INTO floor (number, building_id) VALUES (3, 10);

/* VCC  (Note: floor 1 is actually the basement, floor 2 is main level, floor 3 is upper floor) */
INSERT INTO floor (number, building_id) VALUES (1, 11);
INSERT INTO floor (number, building_id) VALUES (2, 11);
INSERT INTO floor (number, building_id) VALUES (3, 11);

/* BELOW IS MOCK DATA */
/* Houston Field House */
INSERT INTO floor (number, building_id) VALUES (3, 1);

/*-----------------*/
/* FLOOR PLAN DATA */
/*-----------------*/

/* RPI Union */
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/Union1.pdf', 2, 1);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/Union2.pdf', 2, 2);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/Union3.pdf', 2, 3);

/* Amos Eaton */
INSERT INTO floor_plan (link, building_id, floor_number)
VALUES ('http://zim2411.info/floorplans/AmosEaton100.pdf', 5, 1);
INSERT INTO floor_plan (link, building_id, floor_number)
VALUES ('http://zim2411.info/floorplans/AmosEaton200.pdf', 5, 2);
INSERT INTO floor_plan (link, building_id, floor_number)
VALUES ('http://zim2411.info/floorplans/AmosEaton300.pdf', 5, 3);
INSERT INTO floor_plan (link, building_id, floor_number)
VALUES ('http://zim2411.info/floorplans/AmosEaton400.pdf', 5, 4);

/* Lally */
INSERT INTO floor_plan (link, building_id, floor_number)
VALUES ('http://zim2411.info/floorplans/LallyHall000.pdf', 10, 0);
INSERT INTO floor_plan (link, building_id, floor_number)
VALUES ('http://zim2411.info/floorplans/LallyHall100.pdf', 10, 1);
INSERT INTO floor_plan (link, building_id, floor_number)
VALUES ('http://zim2411.info/floorplans/LallyHall200.pdf', 10, 2);
INSERT INTO floor_plan (link, building_id, floor_number)
VALUES ('http://zim2411.info/floorplans/LallyHall300.pdf', 10, 3);

/* VCC */
INSERT INTO floor_plan (link, building_id, floor_number)
VALUES ('http://zim2411.info/floorplans/Voorhees1.pdf', 11, 1);
VALUES ('http://zim2411.info/floorplans/Voorhees2.pdf', 11, 2);
VALUES ('http://zim2411.info/floorplans/Voorhees3.pdf', 11, 3);

/* basement (floor 0) and rooftop are not added into floor plan because students cannot get there */
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/Houston%20Field%20House%20100%20Level.pdf', 1, 1);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/Houston%20Field%20House%20200%20level.pdf', 1, 2);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/Houston%20Field%20House%20300%20level.pdf', 1, 3);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/Mueller1000.pdf', 3, 1);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/Mueller2000.pdf', 3, 2);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/Commons1.pdf', 4, 1);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/Commons2.pdf', 4, 2);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/WalkerLab.1000.pdf', 6, 1);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/WalkerLab.2000.pdf', 6, 2);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/WalkerLab.3000.pdf', 6, 3);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/WalkerLab.4000.pdf', 6, 4);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/WalkerLab.5000.pdf', 6, 5);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/WalkerLab.6000.pdf', 6, 6);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/Sagelab1000.pdf', 7, 1);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/Sagelab2000.pdf', 7, 2);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/Sagelab3000.pdf', 7, 3);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/Sagelab4000.pdf', 7, 4);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/Sagelab5000.pdf', 7, 5);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/Sage%20DH%20Main%20Floor.pdf', 8, 1);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/Ricketts100.pdf', 9, 1);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/Ricketts200.pdf', 9, 2);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/Ricketts300.pdf', 9, 3);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/Ricketts400.pdf', 9, 4);
INSERT INTO floor_plan (link, building_id, floor_number) VALUES ('http://zim2411.info/floorplans/Ricketts500.pdf', 9, 5);

/*---------------*/
/* BATHROOM DATA */
/*---------------*/
/* gender_type: male = 0, female = 1, gender-neutral = 2 */
/* menstrual product type: tampon = 0, pad = 1 */

/*----------------------*/
/* Amos Eaton bathrooms */
/*----------------------*/
/* Floor 1 */
INSERT INTO bathroom (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue)
VALUES (5, 1, 0, false, 'Down right-hand stairway and next to AE123', false, false, null, false, false);
INSERT INTO bathroom (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue)
VALUES (5, 1, 2, true, 'Down right-hand stairway and next to AE123', false, false, null, false, false);
INSERT INTO bathroom (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue)
VALUES (5, 1, 1, false, 'Next to AE103', true, true, null, false, false);

/* Floor 2 */
INSERT INTO bathroom (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue)
VALUES (5, 2, 0, false, 'Next to AE204', false, false, null, false, false);

/* Floor 3 */
INSERT INTO bathroom (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue)
VALUES (5, 3, 1, false, 'Next to housekeeping', true, true, null, false, false);

/* Floor 4 */
INSERT INTO bathroom (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue)
VALUES (5, 4, 0, false, 'In dead end corridor to right of lounge', false, false, null, false, false);

/*-----------------*/
/* Lally bathrooms */
/*-----------------*/
/* Floor 0 */
INSERT INTO bathroom (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue)
VALUES (10, 0, 0, false, 'Left from stairs, next to environmental specialist door', false, false, null, false, false);

/* Floor 2 */
INSERT INTO bathroom (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue)
VALUES (10, 2, 1, false, 'In corridor next to Lally 210 and environmentalist specialist door', false, true, null, false, false);

/*-----------*/
/* RPI Union */
/*-----------*/
/* 2 true and 3 false for ongoing_bathroom_issue */
/* added in random numbers for num_negative_rating and num_positive_rating */

/* Floor 1 */
INSERT INTO bathroom (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES (2, 1, 0, true, 'Next to Rathskeller and Game Room', false, false, null, false, false, 1, 2);
INSERT INTO bathroom (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES (2, 1, 1, true, 'Next to Ben and Jerry''s and Rathskeller''s', true, true, 1, false, true, 3, 4);
INSERT INTO bathroom (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES (2, 1, 2, false, 'In Mother''s', false, false, null, false, false, 3, 42);

/* Floor 2 */
INSERT INTO bathroom (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES (2, 2, 0, false, 'Next to McNeil room and in corner facing Public Safety', false, false, null, false, true, 100, 99);
INSERT INTO bathroom (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES (2, 2, 1, false, 'Next to McNeil room and in corner facing Public Safety', true, true, 0, true, false, 12, 34);

/* Floor 3 */
INSERT INTO bathroom (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES (2, 3, 0, false, 'Next to Clubhouse Pub', false, false, null, false, true, 100, 99);
INSERT INTO bathroom (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES (2, 3, 1, false, 'Next to Clubhouse Pub', true, true, true, 1, false, false, 12, 34);

/*-----------*/
/* VCC  */
/*-----------*/
/* default 0 for num_positive_rating and num_negative_rating  */
/* made some assumptions for men's bathroom data */

/* Floor 1 (basement level)*/
INSERT INTO bathroom (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES (11, 1, 2, false, 'basement Room 111A', false, false, null, false, false, 0, 0);

/* Floor 2  (main level) */
INSERT INTO bathroom (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES (11, 2, 1, true, 'Across from help desk (Rm. 203)', true, true, null, false, false, 0, 0);
INSERT INTO bathroom (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES (11, 2, 0, true, 'Across from help desk (Rm. 204)', true, false, null, false, false, 0, 0);

/* Floor 3 (upper level) */
INSERT INTO bathroom (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES (11, 3, 1, true, 'Next to elevator (Rm. 302)', true, true, null, false, false, 0, 0);
INSERT INTO bathroom (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES (11, 3, 0, true, 'Next to front staircase (Rm. 324)', true, false, null, false, false, 0, 0);

/* BELOW IS MOCK DATA */
/* Houston Field House */
/* 1 true */
/* default 0 for num_negative_rating and num_positive_rating */
INSERT INTO bathroom (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue)
VALUES (1, 3, 1, true, 'Mock wheelchair accessible only bathroom', false, false, null, false, true);
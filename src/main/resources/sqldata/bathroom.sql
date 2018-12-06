/*---------------*/
/* BATHROOM DATA */
/*---------------*/
/* gender_type: male = 0, female = 1, gender-neutral = 2 */
/* menstrual product type: tampon = 0, pad = 1, both = 2 */

/*--------*/
/* Armory */
/*--------*/
/* Floor 2 */
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (3, 2, 0, false, 'North wing, directly right of the entrance from the Mueller Center', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (3, 2, 0, true, 'North wing, on the right wall of the entrance from the Mueller Center', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (3, 2, 1, false, 'South wing, turn right from the entrance', true, true, false, null, false, false, 0, 0);

/* Floor 3 */
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (3, 3, 2, false, 'In center part of building, above the entrance', true, true, false, null, false, false, 0, 0);


/*----------------*/
/* Mueller Center */
/*----------------*/
/* Floor 1 */
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (4, 1, 2, true, 'Past entrance and in corner before doors to the armory', false, false, true, 2, true, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (4, 1, 2, true, 'Past entrance and in corner before doors to the armory', false, false, true, 2, true, false, 0, 0);


/*-----------*/
/* RPI Union */
/*-----------*/
/* 2 true and 3 false for ongoing_bathroom_issue */
/* added in random numbers for num_negative_rating and num_positive_rating */

/* Floor 1 */
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (6, 1, 0, true, 'Next to Rathskeller and Game Room', false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (6, 1, 1, true, 'Next to Ben and Jerry''s and Rathskeller''s', true, true, 1, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (6, 1, 2, false, 'In Mother''s', false, false, null, false, false, 0, 0);

/* Floor 2 */
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (6, 2, 0, false, 'Next to McNeil room and in corner facing Public Safety', false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (6, 2, 1, false, 'Next to McNeil room and in corner facing Public Safety', true, true, 0, true, false, 0, 0);
/* Floor 3 */
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (6, 3, 0, false, 'Next to Clubhouse Pub', false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (6, 3, 1, false, 'Next to Clubhouse Pub', true, true, true, 1, false, false, 0, 0);


/*---------*/
/* Commons */
/*---------*/
/* Floor 1 */
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (7, 1, 0, true, 'In corridor past the entrance, next to postal pickup', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (7, 1, 1, true, 'In corridor past the entrance, next to postal pickup', false, true, true, null, false, false, 0, 0);

/*--------------*/
/* Academy Hall */
/*--------------*/
/* Floor 1*/
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (8, 1, 1, false, 'Near the entrance stairs', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (8, 1, 0, false, 'Near the entrance stairs', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (8, 1, 2, false, 'Near the stairs on the side entrance', false, false, false, null, false, false, 0, 0);

/* Floor 2 */
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (8, 2, 0, false, 'Near archer center', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (8, 2, 1, false, 'Near archer center', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (8, 2, 2, false, 'Near archer center', false, false, false, null, false, false, 0, 0);

/* Floor 3 */
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (8, 3, 2, true, 'Exit Health Center and to the right', false, false, true, 0, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (8, 3, 2, true, 'Near the vending machine', false, false, true, 0, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (8, 3, 0, false, 'Behind the Academy Auditorium', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (8, 3, 1, false, 'Behind the Academy Auditorium', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (8, 3, 2, false, 'In the Health Center', false, false, false, null, false, false, 0, 0);

/* Floor 4 */
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (8, 4, 0, false, 'Next to admin offices', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (8, 4, 1, false, 'Near admin offices', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (8, 4, 2, false, 'Near admin offices', false, false, false, null, false, false, 0, 0);

/*----------------------*/
/* Amos Eaton bathrooms */
/*----------------------*/
/* Floor 1 */
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue)
VALUES
    (9, 1, 0, false, 'Down right-hand stairway and next to AE123', false, false, null, false, false);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue)
VALUES
    (9, 1, 2, true, 'Down right-hand stairway and next to AE123', false, false, null, false, false);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue)
VALUES
    (9, 1, 1, false, 'Next to AE103', true, true, null, false, false);
/* Floor 2 */
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue)
VALUES
    (9, 2, 0, false, 'Next to AE204', false, false, null, false, false);
/* Floor 3 */
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue)
VALUES
    (9, 3, 1, false, 'Next to housekeeping', true, true, null, false, false);
/* Floor 4 */
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue)
VALUES
    (9, 4, 0, false, 'In dead end corridor to right of lounge', false, false, null, false, false);

/*----------*/
/* Carnegie */
/*----------*/
/* Floor 1 */
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (10, 1, 0, false, 'Across from classroom 106', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (10, 1, 1, false, 'Across from classroom 106', false, false, false, null, false, false, 0, 0);

/* Floor 3 */
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (10, 3, 2, false, 'In the COG Sci office', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (10, 3, 2, false, 'In the COG Sci office', false, false, false, null, false, false, 0, 0);

/*------*/
/* CBIS */
/*------*/
/* Floor 1 */
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (11, 1, 1, true, 'Room 1362, in corridor to right of the Biotech Auditorium', false, false, true, 2, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (11, 1, 0, true, 'Room 1363, in corridor to right of the Biotech Auditorium', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (11, 1, 2, true, 'In corridor to right of the Biotech Auditorium', false, false, false, null, false, false, 0, 0);

/* Floor 2 */
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (11, 2, 1, true, 'Room 2306, in atrium, turn left from the elevators', false, false, true, 2, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (11, 2, 0, true, 'Room 2308, in atrium, turn left from the elevators', false, false, false, 0, false, false, 0, 0);

/* Floor 3 */
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (11, 3, 1, true, 'Room 3306, above atrium, turn left from the elevators', false, false, true, 2, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (11, 3, 0, true, 'Room 3308, above atrium, turn left from the elevators', false, false, false, 0, false, false, 0, 0);

/* Floor 4 */
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (11, 4, 1, true, 'Above atrium, turn left from the elevators', false, true, true, 2, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (11, 4, 0, true, 'Above atrium, turn left from the elevators', false, false, false, 0, false, false, 0, 0);

/*-------*/
/* EMPAC */
/*-------*/
/* Floor 3 */
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (12, 3, 2, false, 'Near lounge 3607', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (12, 3, 2, false, 'Inside lounge 3610', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (12, 3, 2, false, 'Across from elevator', false, false, false, null, false, false, 0, 0);

/* Floor 4 */
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (12, 4, 2, false, 'Inside changing room 4611', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (12, 4, 2, false, 'Inside changing room 4612', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (12, 4, 2, false, 'To the right of the elevator in the back corridor', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (12, 4, 2, false, 'To the right of the elevator in the main corridor', false, false, false, null, false, false, 0, 0);

/* Floor 5 */
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (12, 5, 2, false, 'To the left of 5609', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (12, 5, 2, false, 'Near the Evelyn Cafe', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (12, 5, 0, false, 'Near the Evelyn Cafe', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (12, 5, 1, false, 'Near the Evelyn Cafe', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (12, 5, 0, false, 'Near staircase and 5713', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (12, 5, 1, false, 'Near 5707', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (12, 5, 2, false, 'Inside changing room 5220A', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (12, 5, 2, false, 'Inside changing room 5220C', false, false, false, null, false, false, 0, 0);

/* Floor 6 */
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (12, 6, 0, false, 'To the right of elevator', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (12, 6, 1, false, 'To the right of the elevator', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (12, 6, 2, false, 'Across from lounge 6707', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (12, 6, 2, false, 'Inside soloist suite 6715', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (12, 6, 2, false, 'Inside soloist suite 6713', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (12, 6, 2, false, 'Inside soloist suite 6711', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (12, 6, 2, false, 'Inside conductor suite 6717', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (12, 6, 0, false, 'To the left of the elevator', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (12, 6, 1, false, 'To the left of the elevator', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (12, 6, 2, false, 'To the left of the elevator', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (12, 6, 2, false, 'Inside changing room 7220', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (12, 6, 2, false, 'Inside changing room 7216', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (12, 6, 2, false, 'Near admin office', false, false, false, null, false, false, 0, 0);

/* Floor 7 */
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (12, 7, 1, false, 'Near founders room', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (12, 7, 0, false, 'Near founders room', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (12, 7, 2, false, 'Near the staircase', false, false, false, null, false, false, 0, 0);

/*-----*/
/* DCC */
/*-----*/
/* Floor 1 */
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (13, 1, 1, false, 'Next to vending machine', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (13, 1, 0, false, 'Across from lobby', false, false, false, null, false, false, 0, 0);

/* Floor 2 */
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (13, 2, 0, false, 'Inside CCPD', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (13, 2, 1, false, 'Inside CCPD', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (13, 2, 0, false, 'Across from 236, below 324', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (13, 2, 1, false, 'Across from 235, below 318', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)

/* Floor 3 */
VALUES
    (13, 3, 2, false, 'In between CII exit and 308', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (13, 3, 0, false, 'In between CII exit and 308', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (13, 3, 1, false, 'In between CII exit and 308', false, true, true, null, false, false, 0, 0);

/*----------------*/
/* Folsom Library */
/*----------------*/
/* Floor 1 */
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (14, 1, 1, false, 'Near the Communication Center', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (14, 1, 2, false, 'Near the lounge', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (14, 1, 2, false, 'Near the lounge', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (14, 1, 0, false, 'Near the Communication Center', false, false, false, null, false, false, 0, 0);

/* Floor 2 */
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (14, 2, 1, false, 'Near balcony', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (14, 2, 2, true, 'Next to Library Cafe', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (14, 2, 0, false, 'Near balcony', false, false, false, null, false, false, 0, 0);

/* Floor 3 */
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (14, 3, 1, false, 'Exit elevatory to the left', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (14, 3, 0, false, 'Exit elevatory to the left', false, false, false, null, false, false, 0, 0);

/* Floor 4 */
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (14, 4, 1, false, 'Exit elevatory to the left', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (14, 4, 0, false, 'Exit elevatory to the left', false, false, false, null, false, false, 0, 0);

/*-----------------*/
/* Greene Building */
/*-----------------*/
/* Floor 0 */
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (15, 0, 0, false, 'To the left of the elevator', false, false, false, null, false, false, 0, 0);

/* Floor 2 */
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (15, 2, 2, false, 'To the left of 201', false, false, false, null, false, false, 0, 0);

/* Floor 3 */
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (15, 3, 2, false, 'Inside office 303', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (15, 3, 2, false, 'Across from 305, to the left of the elevator', false, false, false, null, false, false, 0, 0);

/* Floor 4 */
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (15, 4, 2, false, 'In between office 111 and 109', false, false, false, null, false, false, 0, 0);

/*-----------------*/
/* JRowl bathrooms */
/*-----------------*/
/* Roof and penthouse omitted because students cannot go there */
/* Floor 0 (Basement) */
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue)
VALUES
    (17, 0, 0, true, 'across from elevator next to  custodial closet', false, false, null, false, false);
/* Floor 1 */
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue)
VALUES
    (17, 1, 1, true, 'Room 1C43, near Physics Lounge', false, true, null, false, false);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue)
VALUES
    (17, 1, 0, true, 'Room 1C47, next to custodial closet', false, false, null, false, false);
/* Floor 2 */
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue)
VALUES
    (17, 2, 0, true, 'Room 2C47, next to custodial closet', false, false, null, false, false);
/* Floor 3 */
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue)
VALUES
    (17, 3, 1, true, 'Room 3C43, across from electrical room', false, true, null, false, false);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue)
VALUES
    (17, 3, 0, true, 'Room 3C47, next to custodial closet', false, false, null, false, false);

/*-----------------*/
/* Lally bathrooms */
/*-----------------*/
/* Floor 0 */
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue)
VALUES
    (18, 0, 0, false, 'Left from stairs, next to environmental specialist door', false, false, null, false, false);

/* Floor 2 */
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue)
VALUES
    (18, 2, 1, false, 'In corridor next to Lally 210 and environmentalist specialist door', false, true, null, false, false);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue)
VALUES
    (18, 2, 0, false, 'To the right from the stairs', false, false, null, false, false);


/*-----*/
/* CII */
/*-----*/
/* Floor 2 */
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (19, 2, 0, false, 'Across from janitor''s closet', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (19, 2, 1, false, 'Next to 2027', false, false, false, null, false, false, 0, 0);

/* Floor 3 */
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (19, 3, 0, false, 'In the corridor on the right past classroom 3130', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (19, 3, 1, false, 'Across from single elevator, next to 3033', false, true, true, 2, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (19, 3, 2, true, 'Portion of the CII across from the DCC, before stairs to the gallery', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (19, 3, 0, false, 'Portion of the CII across from the DCC, before stairs to the gallery', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (19, 3, 1, false, 'Portion of the CII across from the DCC, before stairs to the gallery', false, true, true, 2, false, false, 0, 0);

/* Floor 4 */
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (19, 4, 0, false, 'Room across from 4005 and 4007', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (19, 4, 1, false, 'Room across from 4014, to the right of the elevators', true, false, true, 2, false, false, 0, 0);

/* Floor 5 */
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (19, 5, 0, false, 'Across from copy room', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (19, 5, 1, false, 'Across from copy room', false, false, false, null, false, false, 0, 0);

/* Floor 6 */
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (19, 6, 0, false, 'Across from rooms 6005 and 6007', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (19, 6, 1, false, 'Turn right from the elevators, room across from 6014', false, false, false, null, false, false, 0, 0);

/* Floor 7 */
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (19, 7, 0, false, 'Room across from 7003 and 7007', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (19, 7, 1, false, 'Room across from 7014, to the right of the elevators', false, false, false, null, false, false, 0, 0);

/* Floor 8 */
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (19, 8, 0, false, 'Room across from 8005', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (19, 8, 1, false, 'Room across from 8014, to the right of the elevators', false, false, false, null, false, false, 0, 0);

/* Floor 9 */
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (19, 9, 0, false, 'Room across from 9005', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (19, 9, 1, false, 'Room across from 9014, to the right of the elevators', false, false, false, null, false, false, 0, 0);

/*---------------------*/
/* Pittsburgh Building */
/*---------------------*/
/* Floor 1 */
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (20, 1, 0, false, 'Past the stairs, on the left', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (20, 1, 1, true, 'Past the stairs, on the right', false, true, true, null, false, false, 0, 0);

/* Floor 3 */
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (20, 3, 2, true, 'Inside Lally Student Services office', true, false, false, null, false, false, 0, 0);

/* Floor 4 */
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (20, 4, 0, false, 'Past the stairs, on the right', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (20, 4, 1, false, 'Past the stairs, on the left', false, false, true, null, false, false, 0, 0);

/* Floor 5 */
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (20, 5, 0, false, 'Behind stairs, on right', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (20, 5, 1, false, 'Behind stairs, on left', false, false, false, null, false, false, 0, 0);

/*----------*/
/* Ricketts */
/*----------*/
/* Floor 0 */
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (22, 0, 0, false, 'To the left of elevator', false, false, false, null, false, false, 0, 0);

/* Floor 1 */
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (22, 1, 1, false, 'In chem & bio engineer lounge near 135', false, true, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (22, 1, 0, false, 'In chem & bio engineer lounge near 126', false, false, false, null, false, false, 0, 0);

/* Floor 2 */
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (22, 2, 1, false, 'Near staircase', false, false, false, null, false, false, 0, 0);

/* Floor 4 */
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (22, 4, 2, false, 'Near staircase', false, false, false, null, false, false, 0, 0);

/*------------------*/
/* Sage Dining Hall */
/*------------------*/
/* Floor 1 */
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (23, 1, 1, false, 'Near salad bar', false, false, true, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (23, 1, 0, false, 'Near the entrance', false, false, false, null, false, false, 0, 0);

/*---------------*/
/* Troy Building */
/*---------------*/
/* Floor 1 */
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (25, 1, 1, false, 'To the right from the elevator, across 1003', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (25, 1, 0, false, 'To the right from the eleavtor, across 1003', false, false, false, null, false, false, 0, 0);

/* Floor 2 */
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (25, 2, 0, false, 'To the right from the elevator, across 2003', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (25, 2, 2, false, 'To the right from the eleavtor, across 2003', false, false, false, null, false, false, 0, 0);

/* Floor 3 */
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (25, 3, 1, false, 'To the right from the elevator, across 3003', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (25, 3, 2, false, 'To the right from the elevator, across 3003', false, false, false, null, false, false, 0, 0);

/* Floor 4 */
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (25, 4, 1, false, 'To the right from the elevator, across 4003', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (25, 4, 2, false, 'To the right from the elevator, across 4003', false, false, false, null, false, false, 0, 0);

/* Floor 5 */
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (25, 5, 2, false, 'To the right from the elevator, in corridor', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (25, 5, 2, false, 'To the right from the elevator, in corridor', false, false, false, null, false, false, 0, 0);

/*------*/
/* VCC  */
/*------*/
/* default 0 for num_positive_rating and num_negative_rating  */
/* made some assumptions for men's bathroom data */

/* Floor 1 (basement level)*/
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (26, 1, 2, false, 'Basement Room 111A', false, false, null, false, false, 0, 0);

/* Floor 2  (main level) */
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (26, 2, 1, true, 'Across from help desk (Rm. 203)', true, true, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (26, 2, 0, true, 'Across from help desk (Rm. 204)', true, false, null, false, false, 0, 0);

/* Floor 3 (upper level) */
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (26, 3, 1, true, 'Next to elevator (Rm. 302)', true, true, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (26, 3, 0, true, 'Next to front staircase (Rm. 324)', true, false, null, false, false, 0, 0);

/*--------*/
/* Walker */
/*--------*/
/* Floor 3 */
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (27, 3, 1, false, 'Right side after leaving elevator', true, true, true, 0, false, false, 0, 0);

/* Floor 4 */
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (27, 4, 0, false, 'Right side after leaving elevator', false, false, false, null, false, false, 0, 0);

/* Floor 5 */
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (27, 5, 1, false, 'Right side after leaving elevator', true, true, true, 0, false, false, 0, 0);

/* Floor 6 */
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (27, 6, 0, false, 'Right after leaving elevator', false, false, false, null, false, false, 0, 0);

/*-----------*/
/* West Hall */
/*-----------*/
/* Floor 1 */
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (28, 1, 0, false, 'Across from art lab studio G13', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (28, 1, 2, false, 'Across from art office G05', false, false, false, null, false, false, 0, 0);

/* Floor 2 */
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (28, 2, 1, false, 'To the left of art lab studio 214', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (28, 2, 0, false, 'In between art lab studio 210 and 211', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (28, 2, 2, false, 'Near the stairs', false, false, false, null, false, false, 0, 0);

/* Floor 3 */
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (28, 3, 1, false, 'Across from admin offices 311A, 311B, 311C', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (28, 3, 0, false, 'To the right of art open lab 318', false, false, false, null, false, false, 0, 0);

/*-------==--*/
/* Sage Labs */
/*------==---*/
/* Floor 2 */
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (24, 2, 0, true, 'Next to vending machine, door on LEFT', true, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (24, 2, 1,
        true,
        'Next to vending machine, door on RIGHT',
        true,
        true,
        null,
        false,
        false,
        0,
        0
           );

/* Floor 3 */
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (24, 3, 0, false, 'Next to 3510', false, false, null, false, false, 0, 0);

/* Floor 4 */
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (24, 4, 1, false, 'Across from 4410', true, true, null, false, false, 0, 0);
/* Floor 5 */
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (24, 5, 0, false, 'Next to 5510', false, false, null, false, false, 0, 0);

/*-------==--*/
/* JEC */
/*------==---*/
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (16, 7, 0, false, 'To the left of elevators', true, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (16, 7, 1, false, 'Across from janitor''s closet and 7024', true, true, null, false, false, 0, 0
);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (16, 6, 0, false, 'To the left of elevators', true, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (16, 6, 1, false, 'Across from janitor''s closet and 6024', true, true, null, false, false, 0, 0
);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (16, 5, 0, false, 'To the left of elevators', true, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (16, 5, 1, false, 'Across from janitor''s closet and 5024', true, true, null, false, false, 0, 0
);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (16, 4, 0, false, 'To the left of elevators', true, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (16, 4, 1, false, 'Across from janitor''s closet and 4024', true, true, null, false, false, 0, 0
);

INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (16, 3, 0, false, 'In 3100 corridor to the right of janitor''s closet', true, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (16, 3, 1, false, 'In 3100 corridor to the left of janitor''s closet', true, true, null, false, false, 0, 0
);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (16, 2, 0, false, 'In 2100 corridor to the right of janitor''s closet', true, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (16, 2, 1, false, 'In 2100 corridor to the left of janitor''s closet', true, true, null, false, false, 0, 0
);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (16, 1, 0, false, 'In 1100 corridor to the right of janitor''s closet', true, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (16, 1, 1, false, 'In 1100 corridor to the left of janitor''s closet', true, true, null, false, false, 0, 0
);

/*--------*/
/* 87 Gym */
/*--------*/
/* Floor 0 */
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (29, 0, 2, false, 'Near athletic meeting room 006', false, false, false, null, false, false, 0, 0);

/* Floor 1 */
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (29, 1, 0, false, 'To the right of stairwell', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (29, 1, 2, false, 'Inside office 107', false, false, false, null, false, false, 0, 0);

/* Floor 2 */
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (29, 2, 0, false, 'Across from stairs', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (29, 2, 1, false, 'Across from women''s locker room', false, false, false, null, false, false, 0, 0);
INSERT INTO bathroom
    (building_id, floor_number, gender_type, wheelchair_accessible, location_string, shelves, hooks, menstrual_disposal, menstrual_product_type, baby_changing_station, ongoing_bathroom_issue, num_negative_rating, num_positive_rating)
VALUES
    (29, 2, 0, false, 'Across from men''s locker room', false, false, false, null, false, false, 0, 0);
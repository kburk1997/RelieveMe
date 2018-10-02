/* regions where buildings are located */
DROP TABLE IF EXISTS regions;
CREATE TABLE regions (
  id SERIAL PRIMARY KEY,
  name VARCHAR(256) NOT NULL
);

/* all buildings on campus along with its corresponding region */
DROP TABLE IF EXISTS building;
CREATE TABLE building (
  id SERIAL PRIMARY KEY,
  proper_name VARCHAR(256) NOT NULL,
  region_id INTEGER NOT NULL
);

/* all names for a building; the corresponding building is specified by building_id */
DROP TABLE IF EXISTS building_name;
CREATE TABLE building_name (
  name VARCHAR(256) NOT NULL,
  building_id INTEGER NOT NULL,
  PRIMARY KEY (name, building_id)
);

/* building floors; the corresponding building is specified by building_id */
DROP TABLE IF EXISTS floor;
CREATE TABLE floor (
  number INTEGER NOT NULL,
  building_id INTEGER NOT NULL,
  PRIMARY KEY (number, building_id)
);

/* floor plans for a building; the corresponding floor is specified by building_id and floor_number */
DROP TABLE IF EXISTS floor_plan;
CREATE TABLE floor_plan (
  link VARCHAR(256),
  building_id INTEGER NOT NULL,
  floor_number INTEGER NOT NULL,
  PRIMARY KEY (building_id, floor_number)
);

/* TODO: add table for bathroom using similar to above format */
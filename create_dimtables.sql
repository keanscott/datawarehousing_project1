CREATE TABLE dimtime (
	time_id INTEGER PRIMARY KEY,
	year INTEGER,
	month INTEGER,
	dayweek VARCHAR(9),
	hour INTEGER
);

CREATE TABLE dimlocation (
	location_id INTEGER PRIMARY KEY,
	location_name VARCHAR(50),
	region VARCHAR(50),
	state VARCHAR(3),
	location_type VARCHAR(50)
);

CREATE TABLE dimpersondetails (
	person_id INTEGER PRIMARY KEY,
	gender VARCHAR(10),
	age_group VARCHAR(10),
	road_user VARCHAR(25)
);

CREATE TABLE dimcrashdetails (
	crashdetails_id INTEGER PRIMARY KEY,
	crash_type VARCHAR(25),
	speed_limit INTEGER,
	road_type VARCHAR(50)
);
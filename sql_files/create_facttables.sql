CREATE TABLE factcrash (
	crash_id BIGINT PRIMARY KEY,
	location_id INTEGER,
	time_id INTEGER,
	crashdetails_id INTEGER,
	numberfatalities INTEGER,
	FOREIGN KEY (location_id) REFERENCES dimlocation(location_id),
	FOREIGN KEY (time_id) REFERENCES dimtime(time_id),
	FOREIGN KEY (crashdetails_id) REFERENCES dimcrashdetails(crashdetails_id)
);

CREATE TABLE factfatality (
	fatality_id INTEGER PRIMARY KEY,
	crash_id BIGINT,
	person_id INTEGER, 
	FOREIGN KEY (crash_id) REFERENCES factcrash(crash_id),
	FOREIGN KEY (person_id) REFERENCES dimpersondetails(person_id)
);
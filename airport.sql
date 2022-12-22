CREATE TABLE 'company' (
	'id' SERIAL NOT NULL PRIMARY KEY,
	'name' VARCHAR(255) NOT NULL,
	'acronym' VARCHAR(255) NOT NULL
);

CREATE TABLE 'flys' (
	'id' SERIAL NOT NULL PRIMARY KEY,
	'name' DATE NOT NULL,
	'exit' DATE NOT NULL,
	'companyId' INTEGER NOT NULL REFERENCES 'company'('id'),
	'startAirportId' INTEGER NOT NULL REFERENCES 'airports'('id'),
	'endAirportId' INTEGER NOT NULL REFERENCES 'airports'('id')
);

CREATE TABLE 'airports' (
	'id' SERIAL NOT NULL PRIMARY KEY,
	'name' VARCHAR(255) NOT NULL,
	'acronym' VARCHAR(255) NOT NULL
);


CREATE TABLE IF NOT EXISTS Genre (
	id SERIAL PRIMARY KEY,
	name VARCHAR(30) NOT NULL
);

CREATE TABLE IF NOT EXISTS Bands (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS GenreBand (
	Genre_id INTEGER REFERENCES Genre(id),
	Band_id INTEGER REFERENCES Bands(id),
	CONSTRAINT pk PRIMARY KEY (Genre_id, Band_id)
);


CREATE TABLE IF NOT EXISTS Album (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL,
	year_of date
);


CREATE TABLE IF NOT EXISTS BandAlbum (
	Album_id INTEGER REFERENCES Album(id),
	Band_id INTEGER REFERENCES Bands(id),
	CONSTRAINT pkey PRIMARY KEY (Album_id, Band_id)
);


CREATE TABLE IF NOT EXISTS Songs (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	duration time,
	Album_id INTEGER REFERENCES Album(id)
);

CREATE TABLE IF NOT EXISTS Collection (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL,
	year_of date,
	Song_id INTEGER REFERENCES Songs(id)
);

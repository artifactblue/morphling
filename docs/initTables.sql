CREATE TABLE IF NOT EXISTS Users (
	id serial primary key,
	displayName text,
	userKey text,
	createTimestamp timestamp with time zone
);

CREATE TABLE IF NOT EXISTS Comic (
	id serial primary key,
	comicName text,
	lastVolNumber text,
	thumbnail text,
	createTimestamp timestamp with time zone
);

CREATE TABLE IF NOT EXISTS UserSubscription (
	id serial primary key,
	userId integer,
	comicId integer,
	status text, -- SUBSCRIBE, UNSUBSCRIBE, PENDING
	createTimestamp timestamp with time zone
);

CREATE TABLE IF NOT EXISTS ComicVols (
	id serial primary key,
	comicId integer,
	vols integer,
	imageUrl text,
	createTimestamp timestamp with time zone
);
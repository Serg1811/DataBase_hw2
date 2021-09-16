
create table if not exists genre(
	id serial primary key,
	name varchar(30) not null unique
	);

create table if not exists executor(
	id serial primary key,
	name varchar(50) not null,
	genre_id integer references genre(id)
	);
	
create table if not exists album(
	id serial primary key,
	name varchar(50) not null unique,
	year_of_release integer check(year_of_release > 0),
	executor_id integer references executor(id)
	);

create table if not exists track(
	id serial primary key,
	name varchar(100) not null unique,
	duration integer check(duration > 0),
	album_id integer references album(id)
	);
	
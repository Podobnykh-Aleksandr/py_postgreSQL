create table if not exists Track (
	id SERIAL primary key references Album(id),
	track_title VARCHAR(60),
	duration time
);

create table if not exists Album (
	id INTEGER primary key references Executor(id),
	album_title VARCHAR(60),
	year date 
);

create table if not exists Executor (
	id INTEGER primary key references Genre(id),
	name VARCHAR(60),
	pseudonym VARCHAR(60)
);

create table if not exists Genre (
	id SERIAL primary key,
	genre_title VARCHAR(60) not null
);

create table if not exists Collection (
	id INTEGER primary key,
	collection_title VARCHAR(60) not null,
	release_year date
);


create table if not exists GenreExecutor (
	genre_id INTEGER references Genre(id),
	executor_id INTEGER references Executor(id),
	constraint pk primary key (genre_id, executor_id)
);

create table if not exists ExecutorAlbum (
	executor_id INTEGER references Executor(id),
	album_id INTEGER references Album(id),
	constraint pk primary key (executor_id, album_id)
);

create table if not exists TrackCollection (
	track_id INTEGER references Track(id),
	collection_id INTEGER references Collection(id),
	constraint pk primary key (track_id, collection_id)
);

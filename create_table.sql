create table if not exists Album (
	album_id SERIAL primary key,
	album_title VARCHAR(60),
	year date 
);

create table if not exists Track (
	track_id SERIAL primary key,
	track_entry BOOL references Album(id), 
	track_title VARCHAR(60),
	duration time
);

create table if not exists Executor (
	executor_id SERIAL primary key,
	name VARCHAR(60),
	pseudonym VARCHAR(60)
);

create table if not exists Genre (
	genre_id SERIAL primary key,
	genre_title VARCHAR(60) not null
);

create table if not exists Collection (
	collection_id SERIAL primary key,
	collection_title VARCHAR(60) not null,
	release_year date
);


create table if not exists GenreExecutor (
	genre_id SERIAL references Genre(genre_id),
	executor_id SERIAL references Executor(executor_id),
	constraint pk primary key (genre_id, executor_id)
);

create table if not exists ExecutorAlbum (
	executor_id SERIAL references Executor(executor_id),
	album_id SERIAL references Album(album_id),
	constraint pk primary key (executor_id, album_id)
);

create table if not exists TrackCollection (
	track_id SERIAL references Track(track_id),
	collection_id SERIAL references Collection(collection_id),
	constraint pk primary key (track_id, collection_id)
);

create table Album (
	album_id SERIAL primary key,
	album_title VARCHAR(60),
	year INTEGER,
	track_entry INT
);

create table if not exists Track (
	track_id SERIAL primary key,
	track_entry INT references Album(album_id), 
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
	release_year INTEGER
);


create table if not exists GenreExecutor (
	genre_id INT references Genre(genre_id),
	executor_id INT references Executor(executor_id),
	constraint pk_ge primary key (genre_id, executor_id)
);

create table if not exists ExecutorAlbum (
	executor_id INT references Executor(executor_id),
	album_id INT references Album(album_id),
	constraint pk_ea primary key (executor_id, album_id)
);

create table if not exists TrackCollection (
	track_id INT references Track(track_id),
	collection_id INT references Collection(collection_id),
	constraint pk_tc primary key (track_id, collection_id)
);

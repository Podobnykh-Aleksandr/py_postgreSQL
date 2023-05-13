-- Задание 2

select track_title, duration from Track
where duration = (select MAX(duration) from Track);

--

select track_title from Track
where duration >= '00:03:30';

--

select collection_title from Collection
where release_year between 2018 and 2020;

--

select name from Executor
where name not like '% %';

--

select track_title from Track
where string_to_array(lower(track_title), ' ') && array['мой', 'my'];  

-- Задание 3

select g.genre_title , COUNT(ge.executor_id) from Genre g
left join GenreExecutor ge on g.genre_id = ge.genre_id 
group by g.genre_title;

-- 

select COUNT(track.track_id) from Track
join Album on track.track_entry = album.album_id
where album.year between 2014 and 2023;

--

select album_id, track_id, AVG(duration) from Track
join Album on track.track_entry = album.album_id 
group by album_id, track_id 
order by AVG(duration);

--

select executor.name from Executor
where executor.name not in (
	select executor.name 
	from Executor 
	join ExecutorAlbum on executor.executor_id = executoralbum.executor_id 
	join Album on executoralbum.album_id = album.album_id
	where album.year = 2020
);

-- 

select distinct Collection.collection_id, collection.collection_title from Collection
join TrackCollection on trackcollection.collection_id = collection.collection_id 
join Track on track.track_id = trackcollection.track_id
join Album on track.track_entry = album.album_id
join ExecutorAlbum on album.album_id = executoralbum.album_id
join Executor on executoralbum.executor_id = executor.executor_id 
where Executor.name like '%Шклярский%';

-- 

-- Задание 2

select track_title, duration from Track
order by duration desc
where duration(0);

select track_title from Track
where duration > '00:03:30';

select collection_title from Collection
where release_year between 2018 and 2020;

select name from Executor
where name not like '% %';

select track_title from Track
where track_title like '%мой%' and '%my%'; 

-- Задание 3

select genre_id, COUNT(executor_id) from GenreExecutor
group by genre_id;

select album.album_id, COUNT(track_id) from Track
join Album on track_entry = album_id
where album.year between 2014 and 2023
group by track_title; 

select album_id, track_id, AVG(duration) from Track
join Album on track_entry = album_id 
group by album_id, track_id 
order by AVG(duration);

select Executor.executor_id, album.album_id from Executor
join Album on executor_id = album_id
where album.year != 2020
group by executor_title; 

select Collection.collection_id, Executor.executor_id from Collection
join Executor on collection_id = executor_id
where Executor.name like '%Шклярский%'
group by collection_title;

-- 

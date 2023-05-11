insert into Executor(name, pseudonym)
values('Юрий Клинских', 'Хой');
values('Виктор Цой', 'Цой');
values('Ксения Островская', 'Ангина');
values('Эдмунд Шклярский', 'Эд Шклярский');

insert into Genre(genre_title)
values('Рок');
values('Авторская песня');
values('Поп');

insert into Album(album_title, year)
values('Весёлый и злой', '2022');
values('Чужестранец', '2014');
values('Королевство кривых', '2005');

insert into Track(track_title, duration)
values('Кем бы ты ни был', '03:57');
values('Чужестранец', '03:56');
values('Потерянный', '03:54');
values('Азбука морзе', '04:17');
values('Мотылёк', '04:12');
values('Песня эмигранта', '03:09');

insert into Collection(collection_title, release_year)
values('Классика русского рока', '2022');
values('Классика русского рока', '2020');
values('Классика русского рока', '2018');
values('Классика русского рока', '2016');

insert into GenreExecutor(genre_id, executor_id)
values('1', '1');
values('1', '2');
values('3', '3');
values('2', '4');

insert into ExecutorAlbum(executor_id, album_id)
values('4', '1');
values('4', '2');
values('4', '3');

insert into TrackCollection(track_id, collection_id)
values('1', '1');
values('2', '1');
values('3', '1');
values('4', '1');
values('5', '1');
values('6', '1');

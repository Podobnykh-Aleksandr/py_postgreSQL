insert into Executor(name, pseudonym) VALUES
    ('Юрий Клинских', 'Хой'),
    ('Виктор Цой', 'Цой'),
    ('Ксения Островская', 'Ангина'),
    ('Эдмунд Шклярский', 'Эд Шклярский');

insert into Genre(genre_title) VALUES
    ('Рок'),
    ('Авторская песня'),
    ('Поп');

insert into Album(album_title, year) VALUES
    ('Весёлый и злой', '2022'),
    ('Чужестранец', '2014'),
    ('Королевство кривых', '2005');

insert into Track(track_title, duration, Album.album_title) VALUES
    ('Кем бы ты ни был', '00:03:57', 'Чужестранец'),
    ('Чужестранец', '00:03:56', 'Чужестранец'),
    ('Потерянный', '00:03:54', 'Чужестранец'),
    ('Азбука морзе', '00:04:17', 'Чужестранец'),
    ('Мотылёк', '00:04:12', 'Чужестранец'),
    ('Песня эмигранта', '00:03:09', 'Чужестранец');

insert into Collection(collection_title, release_year) VALUES
    ('Классика русского рока', '2022'),
    ('Классика русского рока', '2020'),
    ('Классика русского рока', '2018'),
    ('Классика русского рока', '2016');

insert into GenreExecutor(genre_id, executor_id) VALUES
    ('1', '1'),
    ('1', '2'),
    ('3', '3'),
    ('2', '4');

insert into ExecutorAlbum(executor_id, album_id) VALUES
    ('4', '1'),
    ('4', '2'),
    ('4', '3');

insert into TrackCollection(track_id, collection_id) VALUES
    ('1', '1'),
    ('2', '1'),
    ('3', '1'),
    ('4', '1'),
    ('5', '1'),
    ('6', '1');

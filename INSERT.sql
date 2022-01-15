INSERT INTO Жанры (Название)
VALUES
	('Hip-Hop'),
	('Alternative Hip-Hop'),
	('Pop music'),
	('R&B'),
	('Russian Rock');

INSERT INTO Исполнители (Псевдоним)
VALUES
	('Eminem'),
	('50 Cent'),
	('Noize MC'),
	('Michael Jackson'),
	('Ava Max'),
	('Justin Timberlake'),
	('Lumen'),
	('Кино');

INSERT INTO ЖанрыИсполнителей (КодИсполнителя, КодЖанра)
VALUES
	(1, 1),
	(2, 1),
	(3, 1),
	(3, 2),
	(4, 3),
	(5, 3),
	(6, 4),
	(7, 5),
	(8, 5);

INSERT INTO Альбомы (Название, ГодВыпуска)
VALUES
	('The Eminem Show', 2002),
	('The Marshall Mathers LP', 2000),
	('The Singles', 2003),
	('The Massacre', 2005),
	('Curtis', 2007),
	('Get Rich or Die Tryin', 2003),
	('Выход в город', 2021),
	('The Greatest Hits Vol. 1', 2008),
	('Последний альбом', 2010),
	('Thriller', 1982),
	('Heaven & Hell', 2020),
	('Man of the Woods', 2018),
	('Правда?', 2007),
	('Без консервантов', 2003),
	('Кино', 1991);

INSERT INTO ИсполнителиАльбомов (КодИсполнителя, КодАльбома)
VALUES
	(1, 1),
	(1, 2),
	(1, 3),
	(2, 4),
	(2, 5),
	(2, 6),
	(3, 7),
	(3, 8),
	(3, 9),
	(4, 10),
	(5, 11),
	(6, 12),
	(7, 13),
	(7, 14),
	(8, 15);

INSERT INTO Сборники (Название, ГодВыпуска)
VALUES
	('Curtain Call: The Hits', 2005),
	('8 Mile: Music from and Inspired by the Motion Picture', 2002),
	('ShadyXV', 2014),
	('MP3 Collection Vol.1', 2013),
	('MP3 Collection Vol.2', 2014),
	('Scream', 2017),
	('XX Лет. Избранное', 2018),
	('The Best', 2007);

INSERT INTO Треки (Название, Длительность, КодАльбома)
VALUES
	('Without Me', 290, 1),
	('Sing for the Moment', '339', 1),
	('Superman', 350, 1),
	('The Way I Am', 290, 2),
	('The Real Slim Shady', 284, 2),
	('Lose Yourself', 320, 3),
	('Candy Shop', 209, 4),
	('Amusement Park', 189, 5),
	('P.I.M.P.', 249, 6),
	('Вояджер-1', 219, 7),
	('Столетняя война', 193, 7),
	('Моё Море', 154, 8),
	('На Марсе классно', 254, 9),
	('Thriller', 358, 10),
	('My Head & My Heart', 174, 11),
	('Say Something', 279, 12),
	('Supplies', 225, 12),
	('Гореть', 319, 13),
	('Sid & Nancy', 188, 14),
	('Кукушка', 400, 15);

INSERT INTO ТрекиСборников (КодТрека, КодСборника)
VALUES
	(1, 1),
	(2, 1),
	(6, 2),
	(9, 3),
	(12, 4),
	(13, 5),
	(14, 6),
	(18, 7),
	(19, 8);

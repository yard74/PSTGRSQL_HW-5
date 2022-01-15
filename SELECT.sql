-- 1. Количество исполнителей в каждом жанре
SELECT Название, COUNT(Код) FROM Жанры zh
JOIN ЖанрыИсполнителей zhi ON zh.Код = zhi.КодЖанра
GROUP BY Название;

--2. Количество треков, вошедших в альбомы 2019-2020 годов
--SELECT a.Название, a.ГодВыпуска, COUNT(a.Код) FROM Альбомы a
--JOIN Треки t ON a.Код = t.КодАльбома
--GROUP BY a.Название, a.ГодВыпуска
--HAVING a.ГодВыпуска BETWEEN '2019' AND '2020';

--3. Средняя продолжительность треков по каждому альбому
--SELECT a.Название, AVG(t.Длительность)::numeric(6,2) FROM Альбомы a
--JOIN Треки t ON a.Код = t.КодАльбома
--GROUP BY a.Название;

--4. Все исполнители, которые не выпустили альбомы в 2020 году
-- SELECT Псевдоним FROM Исполнители
-- WHERE Псевдоним NOT IN (
--	SELECT i.Псевдоним FROM Исполнители i
--	JOIN ИсполнителиАльбомов ia ON i.Код = ia.КодИсполнителя
--	JOIN Альбомы a ON  a.Код = ia.КодАльбома
--	WHERE ГодВыпуска = '2020')
-- GROUP BY Псевдоним;

--5. Названия сборников, в которых присутствует конкретный исполнитель (Eminem)
-- SELECT DISTINCT s.Название FROM Сборники s
-- JOIN ТрекиСборников ts ON s.Код = ts.КодСборника
-- JOIN Треки t ON ts.КодТрека = t.Код
-- JOIN Альбомы a ON t.КодАльбома = a.Код
-- JOIN ИсполнителиАльбомов ia ON a.Код = ia.КодАльбома
-- JOIN Исполнители i ON ia.КодИсполнителя = i.Код
-- WHERE i.Псевдоним LIKE 'Eminem';

--6. Название альбомов, в которых присутствуют исполнители более 1 жанра
-- SELECT Название FROM Альбомы a
-- JOIN ИсполнителиАльбомов ia ON a.Код = ia.КодАльбома
-- JOIN ЖанрыИсполнителей zhi ON ia.КодИсполнителя = zhi.КодИсполнителя
-- GROUP BY Название
-- HAVING COUNT(zhi.КодИсполнителя) > 1;

--7. Наименование треков, которые не входят в сборники
-- SELECT Название FROM Треки 
-- WHERE Код NOT IN (
-- 	SELECT Код FROM Треки t
-- 	JOIN ТрекиСборников ts ON t.Код = ts.КодТрека
-- 	WHERE t.Код = ts.КодТрека);

--8. Исполнителя(-ей), написавшего самый короткий по продолжительности трек
-- SELECT Псевдоним FROM Исполнители i
-- JOIN ИсполнителиАльбомов ia ON i.Код = ia.КодИсполнителя
-- JOIN Альбомы a ON ia.КодАльбома = a.Код
-- JOIN Треки t ON a.Код = t.КодАльбома
-- WHERE t.Длительность = (
-- 	SELECT MIN(Длительность) FROM Треки t);
	
--9. Название альбомов, содержащих наименьшее количество треков
-- SELECT a.Название FROM Альбомы a
-- JOIN Треки t ON a.Код = t.КодАльбома
-- GROUP BY a.Название, t.КодАльбома
-- HAVING COUNT(КодАльбома) = (
-- 	SELECT COUNT(КодАльбома) as c FROM Треки
-- 	GROUP BY КодАльбома
-- 	ORDER BY c
-- 	LIMIT 1);
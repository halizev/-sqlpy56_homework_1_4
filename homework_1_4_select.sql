-- ���������� ������������ � ������ �����;
SELECT g.name, COUNT(*)
FROM genre AS g
left JOIN genre_singer AS gs ON g.id = gs.genre_id
left JOIN singer AS s ON gs.singer_id = s.id
GROUP BY g.name

-- ���������� ������, �������� � ������� 2019-2020 �����;
SELECT COUNT(*)
FROM album AS a
LEFT JOIN track AS t on t.album_id = a.id
where a.year between 2019 and 2020

-- ������� ����������������� ������ �� ������� �������;
SELECT a.name, AVG(t.duration)
FROM album AS a
LEFT JOIN track AS t ON t.album_id = a.id
GROUP BY a.name

-- ��� �����������, ������� �� ��������� ������� � 2020 ����;
SELECT DISTINCT s.name
FROM singer AS s
WHERE s.name NOT IN(
    SELECT s.name
    FROM singer AS s
    LEFT JOIN singer_album AS sa ON s.id = sa.singer_id
    LEFT JOIN album AS a ON a.id = sa.album_id
    WHERE a.year = 2020)
    
-- �������� ���������, � ������� ������������ ���������� ����������� (�������� ����);
SELECT c.name
FROM collection AS c
LEFT JOIN collection_track AS ct ON c.id = ct.collection_id
LEFT JOIN track AS t ON t.id = ct.track_id
LEFT JOIN album AS a ON a.id = t.album_id
LEFT JOIN singer_album AS sa ON sa.album_id = a.id
LEFT JOIN singer AS s ON s.id = sa.singer_id
WHERE s.name LIKE '%%Arctic%%'


-- �������� ��������, � ������� ������������ ����������� ����� 1 �����;
SELECT a.name
FROM album AS a
LEFT JOIN singer_album AS sa ON a.id = sa.album_id
LEFT JOIN singer AS m ON m.id = sa.singer_id
LEFT JOIN genre_singer AS gs ON m.id = gs.singer_id
LEFT JOIN genre AS g ON g.id = gs.genre_id
GROUP BY a.name
HAVING count(DISTINCT g.name) > 1
ORDER BY a.name

-- ������������ ������, ������� �� ������ � ��������;
SELECT t.name
FROM track as t
LEFT JOIN collection_track AS ct ON t.id = ct.track_id
WHERE ct.track_id IS null

-- �����������(-��), ����������� ����� �������� �� ����������������� ���� (������������ ����� ������ ����� ���� ���������);
SELECT s.name, t.duration
FROM track AS t
LEFT JOIN album AS a ON a.id = t.album_id
LEFT JOIN singer_album AS sa ON sa.album_id = a.id
LEFT JOIN singer AS s ON s.id = sa.singer_id
GROUP BY s.name, t.duration
HAVING t.duration = (
    SELECT MIN(duration)
    FROM track)


-- �������� ��������, ���������� ���������� ���������� ������.
SELECT DISTINCT a.name
FROM album AS a
LEFT JOIN track AS t ON t.album_id = a.id
WHERE t.album_id IN (
    SELECT album_id
    FROM track
    GROUP BY album_id
    HAVING count(id) = (
        SELECT MIN(t.id)
        FROM(
            SELECT count(id) as id           
            FROM track
            GROUP BY album_id) as t)
    )

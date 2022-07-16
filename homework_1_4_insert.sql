INSERT INTO Genre(name) 
VALUES('Rock'),
('Hip Hop'),
('Indie'),
('Jazz'),
('Reggae');

INSERT INTO Singer(name) 
VALUES('The Beatles'),
('Muse'),
('Eminem'),
('Kanye West'),
('Arctic Monkeys'),
('Radiohead'),
('Miles Davis'),
('John Coltrane'),
('Bob Marley'),
('Matisyahu');

INSERT INTO Album(name, year) 
VALUES('Abbey Road', '1969'),
('Absolution', '2003'),
('Kamikaze', '2018'),
('ye', '2018'),
('Favourite Worst Nightmare', '2007'),
('OK Computer', '1997'),
('Kind of Blue', '1959'),
('Giant Steps', '1960'),
('Natural Mystic', '1992'),
('Youth', '2006');

INSERT INTO Track(name, album_id, duration) 
VALUES('Sun King = Rey Sol', '1', '00:02:27'),
('Polythene Pam', '1', '00:01:13'),
('Time Is Running Out', '2', '00:04:16'),
('Stockholm Syndrome', '2', '00:09:11'),
('The Ringer', '3', '00:05:37'),
('Greatest', '3', '00:03:46'),
('Yikes', '4', '00:03:08'),
('All Mine', '4', '00:02:26'),
('Old Yellow Bricks', '5', '00:03:11'),
('D Is for Dangerous', '5', '00:02:16'),
('Subterranean Homesick Alien', '6', '00:04:51'),
('Let Down', '6', '00:05:35'),
('So What', '7', '00:09:07'),
('Freddie Freeloader', '7', '00:09:48'),
('Giant Steps', '8', '00:04:46'),
('Cousin Mary', '8', '00:05:49'),
('Dont Rock My Boat', '9', '00:04:26'),
('Lively up Yourself', '9', '00:05:10'),
('Unique Is My Dove', '10', '00:03:23'),
('Ancient Lullaby', '10', '00:04:17');

INSERT INTO Collection(name, year) 
VALUES('Best of 1959', '1960'),
('Best of 1969', '1970'),
('Best of 1992', '1993'),
('Best of 1997', '1998'),
('Best of 2003', '2004'),
('Best of 2006', '2007'),
('Best of 2007', '2008'),
('Best of 2018', '2019');

INSERT INTO collection_track (collection_id , track_id) 
VALUES(1, 14),
(2, 2),
(3, 18),
(4, 12),
(5, 4),
(6, 20),
(7, 10),
(8, 8);

INSERT INTO genre_singer (genre_id , singer_id) 
VALUES(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5),
(3, 6),
(1, 6),
(4, 7),
(4, 8),
(5, 9),
(5, 10);

INSERT INTO singer_album (singer_id , album_id) 
VALUES(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);
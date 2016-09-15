-- Write SQL statements to seed your database
-- It should contain the code to create, at least, three songs and two playlists.
-- Check that it works by running `psql spotidora_sharkcloud_development < db/seeds.sql`, and ensuring that the records are inserted.
INSERT INTO songs (title, artist, album)
VALUES ('Chillin Like Keyan', 'Kyle', 'Ballin Ball Chairs'),
('No Swag', 'Kyle', 'Ballin Ball Chairs'),
('Dad?', 'Keyan ft. Kyle', 'Grandma R U Dippin');

INSERT INTO playlists (name, creator)
VALUES ('Mow my Lawn', 'Grandma'),
('Soft Jams', 'Sgt. Brody');

INSERT INTO songlists (song_id, playlist_id)
VALUES (1,1), (1,2), (2,3);

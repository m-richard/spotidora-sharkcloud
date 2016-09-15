-- Write a SQL statement to complete the following database query
-- Write a SQL query to return the Playlist with the `id` of `1`
SELECT * FROM playlists WHERE id = 1;
-- Write a SQL query to return all the Songs for the Playlist whose `id` is `1`
SELECT songs.title, songs.artist, songs.album, songs.genre FROM songs
JOIN songlists ON songlists.song_id = songs.id
JOIN playlists ON playlists.id = songlists.playlist_id
WHERE playlists.id = 1;
-- Check that it works by running `psql spotidora_sharkcloud_development < db/queries.sql`

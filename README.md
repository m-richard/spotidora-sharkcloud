## Instructions

We want to design a database architecture to represent playlists containing various songs

### Getting Set up

Retrieve this using `git clone`

```no-highlight
$ git clone https://github.com/smkopp92/spotidora-sharkcloud.git
$ cd spotidora-sharkcloud
$ bundle
```

Create a schema and the necessary migrations and models to represent the following data and object relationships:

#### Songs

* Songs must have a title, an album, and an artist
* Songs can optionally have a genre
* Songs can be involved with multiple playlists.

#### Playlists

* A playlist must have a name and a creator.
* A playlist can optionally have a description.
* A playlist can have many songs on it.

#### Create a Seeder File using SQL

* This file should be located at `db/seeds.sql`
* It should contain the code to create, at least, three songs and two playlists.
* Check that it works by running `psql spotidora_sharkcloud_development < db/seeds.sql`, and ensuring that the records are inserted.

#### Write a SQL query using joins

* This file should be located at `db/queries.sql`
* Write a SQL query to return the Playlist with the `id` of `1`
* Write a SQL query to return all the Songs for the Playlist whose `id` is `1`
* Check that it works by running `psql spotidora_sharkcloud_development < db/queries.sql`

### Satisfy User Stories

Write an acceptance test for each user story and get the tests to pass.

* DON'T FORGET TO RUN `rake db:test:prepare`

```no-highlight
As a user
I want to view a list of all playlists
So I know what the cool kids are listening to
```

Acceptance Criteria:

* On the playlists index page, I should see the name of each playlist.
* On the playlists index page, the name of each playlist should be a link to the playlist's show page.

```no-highlight
As a user
I want to see the details of a playlist
So I can choose the perfect playlist for my road trip
```

Acceptance Criteria:

* On a playlist's show page, I should see the name and description (if any) of the playlist.

NOTE: YOU WILL HAVE TO WRITE THE TESTS FOR THE FOLLOWING USER STORY:

```no-highlight
As a user
I want to see the songs of each playlist
So I can start memorizing lyrics for karaoke night
```

Acceptance Criteria:

* On a playlist's show page, I should see the song name, artist, album, and genre (if any) of each song that is on the playlist.

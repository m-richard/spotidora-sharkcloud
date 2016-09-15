#As a user
#I want to see the songs of each playlist
#So I can start memorizing lyrics for karaoke night

#[ ]On a playlist's show page, I should see the song name, artist, album, and genre (if any) of each song that is on the playlist.

feature "views songs on a playlist" do
  let!(:songlist) { FactoryGirl.create(:songlist) }
  let!(:songlist2) { FactoryGirl.create(:songlist) }
  # let!(:songs) { FactoryGirl.create_list(:song, 5) }

  scenario "sees all the songs on a given playlist" do
    visit '/'
    click_link Songlist.first.playlist.id
      expect(page).to have_content(songlist.song.title)
      expect(page).to have_content(songlist.song.artist)
      expect(page).to have_content(songlist.song.album)
      expect(page).to have_content(songlist.song.genre)
  end
end

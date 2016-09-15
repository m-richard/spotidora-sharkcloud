require 'spec_helper'

# As a user
# I want to see the details of a playlist
# So I can learn more about each playlist
#
# Acceptance Criteria:
# [ ] On a playlist's show page, I should see the name and description (if any) of the playlist.

feature "playlist details page" do
  let!(:playlist) { FactoryGirl.create(:playlist) }
  let!(:playlist_url) { "/playlists/#{playlist.id}" }

  scenario "click the playlist link from the index to see the details page" do
    visit "/playlists"

    click_link(playlist.name)

    expect(current_path).to eq("/playlists/#{playlist.id}")
  end

  scenario "visits a playlist details page for a playlist" do
    visit playlist_url

    expect(page).to have_content(playlist.name)
    expect(page).to have_content(playlist.creator)
    expect(page).to have_content(playlist.description)
  end
end

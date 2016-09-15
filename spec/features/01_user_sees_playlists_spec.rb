require 'spec_helper'

# As a user
# I want to view a list of all playlists
# So I know what the cool kids are listening to
#
# Acceptance Criteria:
# [ ] On the playlists index page, I should see the name of each playlists.
# [ ] On the playlists index page, the name of each playlist should be a link to the playlist's show page.

feature "view a list of playlist" do
  # before do
  #   FactoryGirl.create_list(:playlist, 5)
  # end
  let!(:playlists) { FactoryGirl.create_list(:playlist, 5) }

  scenario "visit the playlists page" do
    visit "/playlists"

    playlists.each do |playlist|
      expect(page).to have_content(playlist.name)
      expect(page).to have_link(playlist.name)
    end
  end
end

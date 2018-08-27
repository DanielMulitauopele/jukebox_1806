require 'rails_helper'

describe 'as a user' do
  describe 'visits playlists/new' do
    it 'should see a form for new playlist' do
      playlist_name = "Funky Beats"

      visit '/playlists/new'

      fill_in "playlist[name]", with: playlist_name
      click_on "Create Playlist"

      expect(current_path).to eq('/playlists')
      expect(page).to have_content(playlist_name)
    end
  end
end

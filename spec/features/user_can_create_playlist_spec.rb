require 'rails_helper'

describe 'Adding a new playlist' do
  it 'shows a form' do
    playlist_name = 'Funky Beats 2018'

    visit new_playlist_path

    fill_in :playlist_name, with: playlist_name

    click_button 'Create Playlist'

    expect(current_path).to eq("/playlists/#{Playlist.last.id}")
    expect(page).to have_content(playlist_name)
  end
end
require 'rails_helper'

describe 'Adding a new artist' do
  it 'shows a form' do
    artist_name = 'Drake'

    visit new_artist_path

    fill_in :artist_name, with: artist_name

    click_button 'Create Artist'

    expect(current_path).to eq("/artists/#{Artist.last.id}")
    expect(page).to have_content(artist_name)
  end
end
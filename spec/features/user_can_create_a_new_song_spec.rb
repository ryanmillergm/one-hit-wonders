require 'rails_helper'

describe "User visits new_artist_song_path" do
  it 'creates a song' do
    artist = Artist.create(name: "Journey")
    title = "Don't Stop Believin"
    length = 231
    play_count = 0

    visit new_artist_song_path(artist)

    fill_in :song_title, with: title
    fill_in :song_length, with: length
    fill_in :song_play_count, with: play_count

    click_on "Create Song"

    new_song = Song.last

    expect(current_path).to eq(song_path(new_song))
    expect(page).to have_content(title)
    expect(page).to have_content(length)
    expect(page).to have_content(play_count)
    expect(page).to have_content(artist.name)
  end
end

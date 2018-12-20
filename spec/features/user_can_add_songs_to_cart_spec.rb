require 'rails_helper'

describe 'user adds songs to cart' do
  it 'a message is displayed' do
    artist = Artist.create(name: 'Rick Astley')
    song = artist.songs.create(title: 'You know what goes here', length: 250, play_count: 1_500_000_000)

    visit songs_path
    expect(page).to have_content("Cart: 0")

    click_button 'Add song to cart'
    expect(page).to have_content("You now have 1 copy of #{song.title} in your cart.")
    expect(page).to have_content("Cart: 1")

    click_button 'Add song to cart'
    expect(page).to have_content("You now have 2 copies of #{song.title} in your cart.")
    expect(page).to have_content("Cart: 2")
  end
end

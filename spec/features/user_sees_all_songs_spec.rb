require 'rails_helper'

describe 'song index page' do
  describe 'as a visitor' do
    it 'shows all song data' do
      song_1 = Song.create(title: "Don't Stop Believin'", length: 100, play_count: 0)
      song_2 = Song.create(title: "Sal is Awesome", length: 200, play_count: 0)
      song_3 = Song.create(title: "Ellen Mary is Amazing", length: 200, play_count: 0)

      visit songs_path 

      expect(page).to have_content(song_1.title)
      expect(page).to have_content("Length: #{song_1.length}")
      expect(page).to have_content("Play Count: #{song_1.play_count}")

      expect(page).to have_content(song_2.title)
      expect(page).to have_content("Length: #{song_2.length}")
      expect(page).to have_content("Play Count: #{song_2.play_count}")

      expect(page).to have_content(song_3.title)
      expect(page).to have_content("Length: #{song_3.length}")
      expect(page).to have_content("Play Count: #{song_3.play_count}")
    end
  end
end

class Song < ApplicationRecord
  validates_presence_of :title, :length
  belongs_to :artist
  has_many :playlist_songs
  has_many :playlists, through: :playlist_songs
end

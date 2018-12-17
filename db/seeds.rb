artist_1 = Artist.create(name: "Journey")
song_1 = artist_1.songs.create(title: "Don't Stop Believin'", length: 100, play_count: 0)
song_2 = artist_1.songs.create(title: "Any Way You Want It", length: 200, play_count: 0)

artist_2 = Artist.create(name: "Queen")
song_3 = artist_2.songs.create(title: "Don't Stop Me Now", length: 200, play_count: 0)
song_4 = artist_2.songs.create(title: "We Will Rock You", length: 340, play_count: 0)
song_5 = artist_2.songs.create(title: "Under Pressure", length: 239, play_count: 0)


playlist_1 = Playlist.create(name: "Good Songs")
playlist_2 = Playlist.create(name: "More Music")

playlist_1.songs << [song_1, song_3, song_4]
playlist_2.songs << [song_2, song_5]

class Cart
  attr_reader :contents

  def initialize(cart)
    @contents = cart || Hash.new(0)
  end

  def total_count
    @contents.values.sum
  end

  def add_song(song_id)
    song_id_string = song_id.to_s
    @contents[song_id_string] ||= 0
    @contents[song_id_string] += 1
  end

  def count_of(song_id)
    @contents[song_id.to_s] ||= 0
  end
end

class Artist
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    self.get_first_song.genre if self.get_first_song
  end

  def song_count
    self.songs.count
  end

  def genre_count
    self.genres.count
  end
end

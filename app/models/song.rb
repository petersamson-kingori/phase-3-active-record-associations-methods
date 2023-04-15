class Song 
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name if self.genre
  end

  def self.drake_made_this
    drake = Artist.find_by(name: "Drake")
    self.where(artist: drake)
  end
end

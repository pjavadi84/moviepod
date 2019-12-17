class MoviePod::Movie 
  
  attr_accessor :title, :overview, :popularity, :release_date
 
  
  @@all = []
  
  def initialize(title,overview,popularity,release_date)
    @title = title
    @overview = overview
    @budget = popularity
    @release_date = release_date
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  
end
class MoviePod::Movie 
  
  attr_accessor :id, :title, :overview, :budget, :popularity, :release_date
 
  
  @@all = []
  
  def initialize(id,title,overview,budget,popularity,release_date)
    @id = id
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
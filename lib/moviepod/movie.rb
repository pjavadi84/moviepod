class MoviePod::Movie 
  
  attr_accessor :id, :title, :vote_average, :popularity
  
  @@all = []
  
  def initialize(args)
    args.each do |key,value|
      self.send("#{key}=", value) if self.respond_to?(key)
    end
    @@all << self
  end
  
  def self.all
    @@all
  end
  
end
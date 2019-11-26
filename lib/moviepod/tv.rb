class MoviePod::TV 
  
  attr_accessor :id, :name, :vote_average, :overview, :popularity
 
  
  @@all = []
  
  def initialize(args)
   update(args)
   @@all << self
  end
  
  
  def update(args)
     args.each do |key,value|
      self.send("#{key}=", value) if self.respond_to?(key)
    end
  end
  
  
  def self.all
    @@all
  end
  
  
  
end
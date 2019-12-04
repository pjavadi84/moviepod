class MoviePod::Movie 
  
  attr_accessor :id, :title, :overview, :budget, :popularity, :release_date
 
  
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
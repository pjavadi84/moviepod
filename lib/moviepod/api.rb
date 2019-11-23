class MoviePod::API 
  attr_accessor :name, :key
  
  def initialize(name)
    @name = name
    @key = "232880aa87c7a2eb09863ce37088d60a"
  end
  
  def fetch
    base_url = "https://api.themoviedb.org/3/movie/popular?api_key=#{key}&language=en-US&page=1"
    
    response = HTTParty.get(base_url)
    response.parsed_response
  end
  
end
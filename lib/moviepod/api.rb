class Moviepod::API 
  attr_accessor :original_title, :key
  
  def initialize(original_title)
    @original_title = original_title
    @key = "232880aa87c7a2eb09863ce37088d60a"
  end
  
  def fetch
    base_url = "https://api.themoviedb.org/3/movie/top_rated?api_key=#{key}&language=en-US&page=1"
    
    response = HTTParty.get(base_url)
    response.parsed_response
  end
  
end
class MoviePod::API 
  url = "https://api.themoviedb.org/3"
  key = "232880aa87c7a2eb09863ce37088d60a"
  
  def self.trending_movies
    results = HTTParty.get("#{url}/trending/movie/day?api_key=232880aa87c7a2eb09863ce37088d60a")
    binding.pry
  end
  
  
  
  
end
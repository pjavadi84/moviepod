class MoviePod::API 

  
  def self.trending_movies
    results = HTTParty.get("https://api.themoviedb.org/3/trending/movie/day?api_key=232880aa87c7a2eb09863ce37088d60a")
    binding.pry
  end
  
  
  
  
end
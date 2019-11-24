class MoviePod::API 

  
  def self.trending_movies(query)
    results = HTTParty.get("https://api.themoviedb.org/3/trending/#{query}/day?api_key=232880aa87c7a2eb09863ce37088d60a")
    
    results.each do |movie_hash|
      MoviePod::Movie.new(movie_hash)
    end
    
    binding.pry
  end
  
  
  
  
end
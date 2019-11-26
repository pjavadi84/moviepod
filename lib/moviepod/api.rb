class MoviePod::API 
  base_url = "https://api.themoviedb.org/3"
  api_key = "232880aa87c7a2eb09863ce37088d60a"
  
    def self.trending_movies(user_input)
      results = RestClient.get("#{base_url}/trending/#{user_input}/day?#{api_key}")
      json = JSON.parse(results)["results"]
      
      json.each do |trend_hash|
        MoviePod::Movie.new(trend_hash)
      end
      
    end
    
    
    def self.single_trending_movie(user_input)
      results = RestClient.get("#{base_url}/trending/movie/#{movie.id}/day?#{api_key}")
      json = JSON.parse(results)["results"]
      
      json.each do |trend_hash|
        MoviePod::Movie.new(trend_hash)
      end
      
    end
  
  
  
end
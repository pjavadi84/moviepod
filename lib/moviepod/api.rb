class MoviePod::API 
  BASE_URL = "https://api.themoviedb.org/3"
  KEY = "232880aa87c7a2eb09863ce37088d60a"
  
    def self.trending_movies(user_input)
      results = RestClient.get("#{BASE_URL}/trending/#{user_input}/day?api_key=#{KEY}")
      json = JSON.parse(results)
      json["results"].each do |trend_hash|
        MoviePod::Movie.new(trend_hash)
      end
    end
    
    
    def self.single_trending_movie(movie)
      results = RestClient.get("#{BASE_URL}/movie/#{movie.id}?api_key=#{KEY}")
      json = JSON.parse(results)
    end
    
        
    def self.trending_tv(user_input)
      results = RestClient.get("#{BASE_URL}/#{user_input}/popular?api_key=#{KEY}")
      json = JSON.parse(results)
      json["results"].each do |trend_hash|
        MoviePod::TV.new(trend_hash)
      end
    end
    
    
    def self.single_trending_tv(tv)
      results = RestClient.get("#{BASE_URL}/tv/#{tv.id}?api_key=#{KEY}")
      json = JSON.parse(results)
    end
  
  
end
class MoviePod::API 
  
  def api_load
    BASE_URL = "https://api.themoviedb.org/3"
    KEY = "232880aa87c7a2eb09863ce37088d60a"
    
        def self.movies
          popular_movies = RestClient.get("#{BASE_URL}/movie/popular?page=1&language=en-US&api_key=#{KEY}")
  
          json = JSON.parse(popular_movies)
          json["results"].each do |movie_hash|
            movie_ID = movie_hash["id"]
            title = movie_hash["title"]
            overview = movie_hash["overview"]
            budget = movie_hash["budget"]
            popularity = movie_hash["release_date"]
            
            MoviePod::Movie.new(movie_ID,title,overview,budget,popularity)
          end
        end
        
  end
  
end
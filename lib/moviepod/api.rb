class MoviePod::API 
  
  def api_load
    key = "232880aa87c7a2eb09863ce37088d60a"
    popularity_url = RestClient.get("https://api.themoviedb.org/3/movie/popular?page=1&language=en-US&api_key=#{key}")
    
  
          json_response = JSON.parse(popularity_url)
          json_response["results"].each do |movie_hash|
            
            title = movie_hash["title"]
            overview = movie_hash["overview"]
            popularity = movie_hash["popularity"]
            release_date = movie_hash["release_date"]
           
            MoviePod::Movie.new(title,overview,popularity,release_date)
          end
        
  end
  
end

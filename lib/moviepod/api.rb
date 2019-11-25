class MoviePod::API 

  
  def self.trending_movies(user_input)
    base_url = "https://api.themoviedb.org/3"
    
    results = RestClient.get("#{base_url}/trending/#{user_input}/day?api_key=232880aa87c7a2eb09863ce37088d60a")
    json = JSON.parse(results)["results"]
    
    json.each do |trend_hash|
      MoviePod::Movie.new[trend_hash]
      
      binding.pry
    end
    
  end
  
  
  
  
end
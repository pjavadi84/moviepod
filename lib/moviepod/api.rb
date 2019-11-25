class MoviePod::API 

  
  def self.trending_movies(user_input)
    results = RestClient.get("https://api.themoviedb.org/3/trending/#{user_input}/day?api_key=232880aa87c7a2eb09863ce37088d60a")
    json = JSON.parse(results)["results"]
    
    json.each do |user_hash|
      media_title = user_hash["title"]
      
      binding.pry
    end
    
  end
  
  
  
  
end
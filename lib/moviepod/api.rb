class MoviePod::API 
  BASE_URL = "https://api.themoviedb.org/3"
  KEY = "232880aa87c7a2eb09863ce37088d60a"
  
      def self.movies
        results = RestClient.get("#{BASE_URL}/movie/popular?page=1&language=en-US&api_key=#{KEY}")

        json = JSON.parse(results)
        json["results"].each do |trend_hash|
          MoviePod::Movie.new(trend_hash)
        end
      end
  
end
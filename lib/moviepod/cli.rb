class MoviePod::CLI
  
  def welcome
    puts "Welcome to MoviePod CLI"
  end
  
  def menu
    puts "Type movie, tv, or all to view the top 20s trending today: "
    user_input = gets.strip
    
    if user_input == "movie"
      MoviePod::API.trending_movies(user_input)
      MoviePod::Movie.all.each.with_index(1) do |movie, index|
        puts "#{index}- #{movie.title}"
      end
      puts "Type the number assoicated with that movie on the list above to read more details about it: "
      user_input = gets.strip
    
      movie = MoviePod::Movie.all[user_input.to_i - 1] 
      MoviePod::API.single_trending_movie(movie)
      puts "Overview: #{movie.overview}"
      puts "Popularity: #{movie.popularity}"
      puts "Release date: #{movie.release_date}"
      
    elsif user_input == "tv" 
      MoviePod::API.trending_tv(user_input)
      MoviePod::TV.all.each.with_index(1) do |tv, index|
        puts "#{index}- #{tv.name}"
      end
      puts "Type the number assoicated with that TV show on the list above to read more details about it: "
      user_input = gets.strip
      tv = MoviePod::TV.all[user_input.to_i -1]
      MoviePod::API.single_trending_tv(tv)
      puts "Overview: #{tv.overview}"
      puts "Popularity: #{tv.popularity}"
    end
    
  end
      
  

end
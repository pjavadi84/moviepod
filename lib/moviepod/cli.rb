class MoviePod::CLI
  
  def welcome
    puts "Welcome to MoviePod CLI"
  end
  
  def movie_information
    
    
    puts "List of top 20 trending movies and tv. Type movie, tv, or all to view: "
    user_input = gets.strip
    MoviePod::API.trending_movies(user_input)
    MoviePod::Movie.all.each.with_index(1) do |movie, index|
      puts "#{index}- #{movie.title}"
    end
    
    
    
    puts "Would you like to check the details? type the name of the movie from the list and press enter. if you are done, type exit"
    user_input = gets.strip
    movie = MoviePod::Movie.all[user_input.to_i - 1] 
    MoviePod::API.single_trending_movie(movie)
    puts "Overview: #{movie.overview}"
    puts "Budget: #{movie.budget}"
    puts "Popularity: #{movie.popularity}"
    puts "Release date: #{movie.release_date}"
    
  end
  

end
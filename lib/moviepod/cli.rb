class MoviePod::CLI
  
  def welcome
    puts "Welcome to MoviePod CLI"
  end
  
  def movie_information
    puts "Which type of media channel you are most interested to check for today? You can choose movie,tv, or all: "
    user_input = gets.strip
    MoviePod::API.trending_movies(user_input)
    MoviePod::Movie.all.each.with_index(1) do |movie, index|
      puts "#{index}- #{movie.title}"
    end
    
    puts "Would you like to check the details? type the number of the movie you are interested and press enter. if you are done, type exit"
      
    user_input = gets.strip
    
    movie = Movie.all[user_input.to_i-1] 
    
    MoviePod::Movie.single_trending_movie(movie)
    
  end
  

end
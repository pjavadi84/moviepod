class MoviePod::CLI
  
  def welcome
    puts "Welcome to MoviePod CLI"
  end
  
  def movie_information
    puts "Which type of media channel you are most interested to check for today? You can choose movie,tv, or all: "
    user_input = gets.strip
    MoviePod::API.trending_movies(user_input)
  end
  

end
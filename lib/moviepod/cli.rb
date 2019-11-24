class MoviePod::CLI
  
  def welcome
    puts "Welcome to MoviePod CLI"
    movie_information
  end
  
  def movie_information
    puts "Which trending movie you want to look at? Type the name: "
    
    user_input = gets.strip
    
    MoviePod::API.trending_movies(user_input)
  
  end
  

end
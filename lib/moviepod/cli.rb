require 'pry'

class MoviePod::CLI
  
  def welcome
    puts "Welcome to MoviePod! Here is the list of trending movies: "
  
    MoviePod::API.trending_movies
  
  end
  
 
  

end
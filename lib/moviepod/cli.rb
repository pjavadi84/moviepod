class MoviePod::CLI
  
  def call 
    trendy_movie_list
    movie_list_menu
    goodbye
  end
  
  def trendy_movie_list
    puts "TODAY's TOP TRENDING MOVIES:"
    @movies = MoviePod::API.movies
    @movies.each.with_index(1) do |movie, index|
      puts "#{index}. #{movie["title"]} - Rating: #{movie["popularity"]}"
    end
  end
  
  
  def movie_list_menu
    user_input = nil 
    while user_input != "exit"
      puts "Enter a number to see details about the movie OR 'list' to see the list again, or type 'exit' to exit the program:  "
      
      user_input = gets.strip.downcase
  
      if 0 < user_input.to_i
        the_movie = @movies[user_input.to_i - 1]
        puts "######{the_movie["title"]}#####"
        puts "Highlights: #{the_movie["overview"]}"
        puts "Popularity: #{the_movie["popularity"]}"
      elsif user_input == "list"
        trendy_movie_list
      else
        goodbye
      end
       
    end
  end
  
  
  def goodbye
    puts "Thanks for checking moviepod. check us back if you want to check more popular movies"
  end
  
end
  
 
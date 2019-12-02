class MoviePod::CLI
  
  def call 
    greeting
    movie_list_menu
  end
  
  def greeting
    puts "welcome to Moviepod. type menu to check the list or exit to quit the app:"
    user_input = gets.strip.downcase
    if user_input == "menu"
      trendy_movie_list
    elsif user_input == "exit"
      goodbye
    else
      puts "'#{user_input}' is not a valid input. please type 'menu' or 'exit"
    end
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
      elsif user_input == "exit"
        goodbye
      elsif user_input.to_i > 20
        puts "invalid input! please type a number for that movie"
      end
       
    end
  end
  
  
  def goodbye
    puts "Thanks for checking moviepod. check us back if you want to check more popular movies"
  end
  
end
  
 
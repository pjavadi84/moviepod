class MoviePod::CLI

  def call
    MoviePod::API.new.api_load
    
    greeting
    trendy_movie_list
    movie_list_menu
  end
  
  def greeting
    puts "Welcome to your movie dashboard".colorize(:green)
    sleep(1.5)
  end
  
  
  def trendy_movie_list
    puts "\nToday's Top popular Movies: ".colorize(:green)
    sleep(1.5)
    MoviePod::Movie.all.uniq.each.with_index(1) do |movie, index|
      puts "#{index}. #{movie.title}".colorize(:blue)
    end
  end
  
  
  def movie_list_menu
    user_input = nil 
    while user_input != "exit"
    sleep(1)
      puts "\nEnter a number from the list to see details about the movie OR 'list' to see the list again, or type 'exit' to exit the program:  ".colorize(:yellow)
      
      user_input = gets.strip.downcase
      
      if user_input.to_i > 0 && user_input.to_i < MoviePod::Movie.all.size
        sleep(2)
        movie_detail_info(user_input)
      elsif user_input == "list"
        trendy_movie_list
      elsif user_input == "exit"
        goodbye
      else
        puts "invalid character or number entered. Please try again!"
      end
    end
  end
  
  def movie_detail_info(input)
    movie = MoviePod::Movie.all[input.to_i - 1]
    puts "\nTitle: #{movie.title}".colorize(:blue)
    puts "\nOverview: #{movie.overview}".colorize(:blue)
    puts "\nRelease Date: #{movie.release_date}".colorize(:blue)
  end

  
  
  def goodbye
    sleep(1.5)
    puts "\nThanks for checking moviepod. check us back if you want to check more popular movies".colorize(:green)
  end
  
end
  
 
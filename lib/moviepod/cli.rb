class MoviePod::CLI

  def call
    MoviePod::API.new.api_load
    
    greeting
    trendy_movie_list
    movie_list_menu
  end
  
  def greeting
    puts "Welcome to your movie dashboard"
    sleep(1.5)
  end
  
  
  def trendy_movie_list
    puts "\nToday's Top popular Movies: "
    sleep(1.5)
    MoviePod::Movie.all.uniq.each.with_index(1) do |movie, index|
      puts "#{index}. #{movie.title}"
    end
  end
  
  
  def movie_detail_info(input)
    movie = MoviePod::Movie.all[input.to_i - 1]
    puts "Movie#: #{movie.id}"
    puts "Title: #{movie.title}"
    puts "Overview: #{movie.overview}"
    puts "Release Date: #{movie.release_date}"
  end

  
  def movie_list_menu
    user_input = nil 
    while user_input != "exit"
    sleep(1)
      puts "\nEnter a number to see details about the movie OR 'list' to see the list again, or type 'exit' to exit the program:  "
      
      user_input = gets.strip.downcase
      
      if user_input.to_i > 0 && user_input.to_i < 21
        sleep(2)
        movie_detail_info(user_input)
      elsif user_input == "list"
        trendy_movie_list
      elsif user_input == "exit"
        goodbye
      else
        puts "number is not within range in the list"
      end
    end
  end
  
  
  def goodbye
    sleep(1.5)
    puts "\nThanks for checking moviepod. check us back if you want to check more popular movies"
  end
  
end
  
 
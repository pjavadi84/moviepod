class MoviePod::CLI
  
  def call 
    trendy_movie_list
    trendy_tv_show_list
    tv_list_menu
    movie_list_menu
    goodbye
  end
  
  def trendy_movie_list
    puts "top movies trending today"
    @movies = MoviePod::Movie_List.today
    @movies.each.with_index(1) do |movie, index|
      puts "#{index}. #{movie.title} - Rating: #{movie.popularity}"
    end
  end
  
  def trendy_tv_show_list
    puts "top TV shows trending today"
    @TV_Shows = MoviePod::TV_Show_List.today
    @TV_Shows.each.with_index(1) do |tv_show, index|
      puts "#{index}. #{tv_show.name} - Rating: #{tv_show.popularity}"
    end
  end
  
  
  def tv_list_menu
    user_input = nil 
    while user_input != "exit"
      puts "Enter a number to see details of that TV show OR 'list' to see the list again, or type 'exit' to exit the program:  "
      
      user_input = gets.strip.downcase
  
      if user_input.to_i > 0 
        the_tv_show = @TV_shows[user_input.to_i - 1]
        puts "#{the_tv_show.name} - #{the_tv_show.popularity}"
      elsif user_input == "list"
        trendy_tv_show_list
       else
        puts "invalid input. Please type list or exit."
       end
       
    end
  end
  
    def movie_list_menu
    user_input = nil 
    while user_input != "exit"
      puts "Enter a number to see details of that movie OR 'list' to see the list again, or type 'exit' to exit the program:  "
      
      user_input = gets.strip.downcase
  
      if user_input.to_i > 0 
        the_movie = @movies[user_input.to_i - 1]
        puts "#{the_movie.name} - #{the_movie.popularity}"
      elsif user_input == "list"
        trendy_movie_list
       else
        puts "invalid input. Please type list or exit."
       end
       
    end
  end
  
  
  
  def goodbye
    puts "Thank you for visiting Moviepod!Comeback again next time you like to get a fast convenient way of checking the daily trends"
  end
  
  
end
    
    
    
        
    
  
#   def welcome
#     puts "Welcome to MoviePod CLI"
#   end
  
#   def menu
#     puts "Type movie, tv, or all to view the top 20s trending today: "
#     user_input = gets.strip
    
#     if user_input == "tv" 
#       MoviePod::API.trending_tv(user_input)
#       MoviePod::TV.all.each.with_index(1) do |tv, index|
#         puts "#{index}- #{tv.name}"
#       end
#       puts "Type the number assoicated with that TV show on the list above to read more details about it: "
#       user_input = gets.strip
#         tv = MoviePod::TV.all[user_input.to_i - 1]
#         MoviePod::API.single_trending_tv(tv)
#         # binding.pry
#         puts "@@@@@@#{tv.name}@@@@@@"
#         puts "Overview: #{tv.overview}"
#         puts "Popularity: #{tv.popularity}"
      
      
    
#     elsif user_input == "movie"
#       MoviePod::API.trending_movies(user_input)
#       MoviePod::Movie.all.each.with_index(1) do |movie, index|
#         puts "#{index}- #{movie.title}"
#       end
#       puts "Type the number assoicated with that movie on the list above to read more details about it: "
#       user_input = gets.strip
#       movie = MoviePod::Movie.all[user_input.to_i - 1] 
#       MoviePod::API.single_trending_movie(movie)
#       puts "@@@@@@#{movie.title}@@@@@@"
#       puts "Overview: #{movie.overview}"
#       puts "Popularity: #{movie.popularity}"
#       puts "Release date: #{movie.release_date}"
#     end
    
#   end
      
# end
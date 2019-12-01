class MoviePod::CLI
  
  def call 
    trendy_movie_list
    trendy_tv_show_list
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
  
  def menu
    user_input = nil 
    while user_input != "exit"
      puts "Enter the number of a movie you are interested to see more detail of: "
      user_input = gets.strip.downcase
      
      if user_input.to_i > 0 
        the_movie = @movies[user_input.to_i - 1]
        puts "#{the_movie.title} - #{the_movie.popularity}"
      elsif user_input == "list"
        trendy_movie_list
      else
        
    
  
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
class Moviepod::CLI
  
  def welcome
    puts "Welcome to MoviePod! Here is the list of top 10 popular movies of today"
    # show_top_10
    puts "What would you like to do?
    Type a valid number to see the detais
    Type 'exit' to exit the app"
    
    user_input = gets.strip
  end
  
  # def self.show_top_10
  #   # 1. #{title} : #{vote_average} 
  # end 
  
  # def self.show_by_description
    
  # end
  

end
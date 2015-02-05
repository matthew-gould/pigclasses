class Player

  attr_reader: :players

  def initialize players=1
    @players = players
    name = []
    @player_totals = Array.new(players, 0)

  def start
    puts "*******************************"
    puts "*****Welcome to HOG ROAST!*****"
    puts "*******************************\n\n"
  end

  def names
    players.times do |x|
      puts "\nPlayer#{x+1} what is your name?"
        y = gets.chomp.downcase.capitalize
        @name.push y
    end
     @name
  end

  def game_choice
    puts "Which game would you like to play?"
    puts "1) Pig\n2) Hog"
      game_mode = gets.chomp.downcase
  end


end
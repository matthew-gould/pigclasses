class Game

  attr_reader :players

  def initialize players=0
    @players = players
    @name = []
  end

  def names
    players.times do |x|
      puts "\nPlayer#{x+1} what is your name?"
        y = gets.chomp.downcase.capitalize
        @name.push y
    end
     @name
  end

  def sides
    puts "How sides would you like to play with?"
      sides = gets.chomp.to_i

    return sides
  end




end
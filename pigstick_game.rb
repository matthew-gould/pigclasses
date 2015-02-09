require './game'
require './pig'
require './hog'
require 'pry'

# Game start:

puts "\n\n*******************************"
puts "*****Welcome to HOG ROAST!*****"
puts "*******************************\n\n"

game = Game.new

name = []
players = 0
game_mode = []

puts "\nHow many players?"
  players = gets.chomp.to_i

players.times do |x|
      puts "\nPlayer#{x+1} what is your name?"
        y = gets.chomp.downcase.capitalize
        name.push y
        game.get_names(name)
    end

puts "Do you want to play pig or hog?"
puts "1. pig"
puts "2. hog"
  y = gets.chomp.downcase
  game_mode.push y


if game_mode[0].include?("1")
  until game.over?
    name.each do |x|
      puts "\n\nIt is now #{x}'s' turn.\n\n"
      game.rolling
    end
  end
else
  hog = Hog.new
  until game.over?
    name.each do |x|
      puts "\n\nIt is now #{x}'s' turn.\n\n"
      puts "How many dice would you like to roll?"
      x = gets.chomp.to_i
      hog.rolling(x)
    end
  end
end

###############################################
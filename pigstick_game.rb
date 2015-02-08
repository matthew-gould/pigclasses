# require 'simplecov'
# SimpleCov.start
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

until game.over?
  name.each do |x|
    puts "\nIt is now #{x} turn."
    game.rolling
  end
end



 # puts "\nWhich game would you like to play?"
 # puts "1) Pig\n2) Hog"
 #  game_mode = gets.chomp.downcase

 #  if game_mode = pig

###############################################
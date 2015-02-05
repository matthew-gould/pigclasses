class Game
require 'pry'
  attr_reader :players, :player_total, :turn_score

  def initialize players=1
    @players = players
    @name = []
    @player_totals = Array.new(players, 0)
    @turn_score = 0
  end

  def names
    players.times do |x|
      puts "\nPlayer#{x+1} what is your name?"
        y = gets.chomp.downcase.capitalize
        @name.push y
    end
     @name
  end

  def score
    (0...@player_totals.length).each do |x|
      puts "\n#{@name[x]}, you currently have #{@player_totals[x]} points."
      @player_totals[x] += @turn_score
      return @player_totals
    end
  end

  def roll_once
    loop do
      roll = rand(1..6)
        puts "Your roll is: #{roll}!\n\n"
        if roll == 1
          puts "DOH! You got 0 points for rolling a 1!\n\n"
          return 0
        else
          @turn_score += roll
          puts "Your turn total so far is #{turn_score}!"
          puts "Would you like to roll again? (y/n)"
          if gets.chomp == "n"
            return @turn_score
        end
      end
    end
  end


end
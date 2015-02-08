class Game
require 'pry'
  attr_reader :turn_score, :max_score

  def initialize
    @get_names = []
    @score_array = []
    @turn_score = 0
    max_score = 50
  end

  def get_names(name)
    @get_names = name
    score_array(@get_names)
    return @get_names
  end

  def score_array(get_names)
    @get_names.each do |x|
      @score_array << 0
      return @score_array
    end
  end

  def score
    (0..@score_array.length).each do |x|
      @score_array[x] += @turn_score
      puts "\n#{@get_names[x]}, you currently have #{@score_array[x]} points.\n\n"
        if @score_array[x] >= max_score
          @winner = x
          #return over?
        end
      end
  end

  def over?
    if true
      puts "\n\nWe have a winner!\n\n" 
      puts "\n\nFinal Scoreboard:\n\n"
      (0...score_array.length).each do |x|
        puts "#{player_name[x]}: #{player_scores[x]}"
      end
    else
      return false
    end
  end


  def rolling
    roll = rand(1..6)
    roll_once(roll)
  end

  def roll_once (roll)
    loop do
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
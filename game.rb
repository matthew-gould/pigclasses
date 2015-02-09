class Game
require 'pry'
  attr_reader :turn_score, :max_score

  def initialize
    @get_names = []
    @score_array = []
    @turn_score = 0
    @max_score = 20
    @winner = false
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
    (0...@score_array.length).each do |x|
      @score_array[x] += @turn_score
      if @score_array[x] >= @max_score
          @winner == true
      else
        puts "\n#{@get_names[x]}, you currently have #{@score_array[x]} points.\n\n"        
        return @score_array
        end
      end
  end

  def winner
    @winner
  end

  def over?
    if @winner == true
      true
      @ending_message
    else
      false
    end
  end

  def ending_message
    puts "\n\nWe have a winner!\n\n" 
    puts "\n\nFinal Scoreboard:\n\n"
    (0...score_array.length).each do |x|
      puts "#{player_name[x]}: #{player_scores[x]}"
    end
  end

  def rolling
    loop do
      roll = rand(1..6)
        if roll == 1
          puts "DOH! You got 0 points for rolling a 1!\n\n"
          return 0
        else
          @turn_score += roll
        end
          puts "Your turn total so far is #{turn_score}!"
          puts "Would you like to roll again? (y/n)"
          if gets.chomp == "n"
            @score
            return @turn_score
        end
    end
  end

    # def pig_turn
    #   (0...@score_array.length).each do |x|
    #     puts "\n#{get_names[x]}, you currently have #{score_array[x]} points."
    #     score_array[x] += rolling
    #     puts "You now have #{score_array[x]} points."
    #     puts "\n_____________________________________________________\n\n" 
    #   end
    #   if check_winner(player_scores) == true
    #     break
    #   end
    # end
  end
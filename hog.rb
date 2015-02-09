class Hog < Game

  def initialize
  end

  def rolling(roll_number)
  turn_score = 0
  dice_roll = []
  
  roll_number.times do
    roll = rand(1..6)
    dice_roll.push roll

    if roll == 1
      puts "DOH! You rolled #{dice_roll} awarded 0 points!"
      return 0
      
    else 
      turn_score += roll 
    end
  end

puts "You rolled #{dice_roll} and your total is: #{turn_score}"
  puts "----------------------------------------"
  @score
  return turn_score
  end
end
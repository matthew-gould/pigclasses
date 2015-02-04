require 'minitest/autorun'
require 'pry'

require './game'
# require './pig'
# require './hog'


class PigstickTests < MiniTest::Test

  def test_that_there_are_two_players
    game = Game.new 2
    assert game.players, 2
  end

  # TEST ONLY WORKS IF YOU GET AN INPUT FOR # OF PLAYERS:

  # def test_that_you_can_enter_numner_of_players
  #   puts "How many players?"
  #     x = gets.chomp.to_i
  #     game = Game.new x
  #     assert game.players, x
  # end

  def test_that_players_can_enter_names
    game = Game.new 3
    assert game.names.count, 3
  end

  # TEST ONLY WORKS IF YOU CHOOSE 3 SIDIES:

  # def test_that_dice_sides_can_be_entered
  #   game = Game.new 3
  #   assert game.sides == 3
  # end




end
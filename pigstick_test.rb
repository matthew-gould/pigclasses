require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'pry'



require './game'
require './player'
# require './pig'
# require './hog'


class PigstickTests < MiniTest::Test

  def test_that_there_are_at_least_two_players
    game = Game.new 3
    assert game.players >= 3
  end

  def test_that_you_can_enter_number_of_players
      game = Game.new 3
      assert game.names.count == 3
  end

  def test_that_players_can_enter_names
    game = Game.new 3
    assert game.names.count, 3
  end

  def test_that_shit_is_rolling
    game = Game.new 3
    assert game.roll_once, (1..6)
  end

  # this one will only work if player doesnt roll 1:
  def test_that_player_totals_are_being_banked
    game = Game.new 3
    game.roll_once
    refute game.score.first == 0 
  end



end
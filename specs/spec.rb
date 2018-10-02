require('minitest/autorun')
require('minitest/rg')
require_relative('../models/game')

class TestGame < MiniTest::Test

  def test_compare_rock_wins_over_scissors()
     game = Game.new('rock', 'scissors')
     result = game.compare()
     #assert_equal('Rock wins', result)
     assert_equal('Player1 wins by playing rock', result)
   end

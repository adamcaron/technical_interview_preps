require './test/test_helper'

class GameTest < Minitest::Test
  def test_games_have_at_least_one_player
    player = Player.new("Adam")
    game = Game.new(player)

    assert_equal player, game.player
  end

  def test_game_has_a_deck
    player = Player.new("Adam")
    game = Game.new(player)

    assert_equal Deck, game.deck.class
  end
end
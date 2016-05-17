require './test/test_helper'

class PlayerTest < Minitest::Test
  def test_players_can_be_created
    player = Player.new("Adam")

    assert_equal "Adam", player.name
  end
end

# > player = Player.new("John")
# > game = Game.new(player)

# > game.deal

# > player.cards
# => "2 of Hearts, K of Spades"
# > player.score
# => 12
# > player.hit
# => "4 of Clubs"
# > player.cards
# => "2 of Hearts, K of Spades, 4 of Clubs"
# > player.score
# => 16
require './lib/deck'

class Game
  attr_reader :player, :deck

  def initialize(player)
    @player = player
    @deck   = Deck.new
  end
end
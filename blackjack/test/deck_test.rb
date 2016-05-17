require './test/test_helper'

class DeckTest < Minitest::Test

  def test_deck_has_cards
    assert Deck.new.cards
  end

end

# deck has 52 cards


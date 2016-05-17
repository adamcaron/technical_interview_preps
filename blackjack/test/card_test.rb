require './test/test_helper'

class CardTest < Minitest::Test
  def test_it_belongs_to_a_suit
    card = Card.new("2", "heart")

    assert Card.suits.include?(card.suit)
    assert_equal "heart", card.suit
  end

  def test_it_has_a_rank
    card = Card.new("2", "heart")

    assert Card.ranks.include?(card.rank)
    assert "2", card.rank
  end

  def test_it_has_a_score
    card = Card.new("2", "heart")

    assert_equal 2, card.score
  end
end
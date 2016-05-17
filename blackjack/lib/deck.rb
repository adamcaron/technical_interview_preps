require './lib/card'

class Deck
  attr_reader :cards

  def initialize
    @cards = Card.suit.map do |suit|
      Card.ranks.map do |k|
      end
      suit.pluralize
    end
  end
end
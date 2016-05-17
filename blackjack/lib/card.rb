class Card
  attr_reader :rank, :suit, :score

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
    @score = self.ranks[rank]
  end

  def self.suit
    [
      "heart",
      "diamond",
      "spade",
      "club"
    ]
  end

  def self.ranks
    {
      "ace" => {
          "high" => 11,
          "low"  => 1
        },
      "2" => 2,
      "3" => 3,
      "4" => 4,
      "5" => 5,
      "6" => 6,
      "7" => 7,
      "8" => 8,
      "9" => 9,
      "10" => 10,
      "jack" => 10,
      "queen" => 10,
      "king" => 10
    }
  end
end
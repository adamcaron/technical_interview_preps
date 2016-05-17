class Tower
  attr_reader :posts
  def initialize(posts = {"A" => [3,2,1], "B" => [], "C" => []})
    @posts = posts
    # @solution = posts["A"]
  end

  def move!(from = "A", to = "C", extra = "B") #add args / modify method signature if you like
    number_of_discs = posts["A"].count
    if number_of_discs == 1
      # move that thing to another pole
      posts["C"] << posts["A"].pop
    elsif number_of_discs == 2
      posts["C"] << posts["A"].pop
      posts["B"] << posts["A"].pop
      posts["B"] << posts["C"].pop
    else
      posts["C"] << posts["A"].pop
      posts["B"] << posts["A"].pop
      posts["B"] << posts["C"].pop
      posts["C"] << posts["A"].pop
      posts["A"] << posts["B"].pop
      posts["C"] << posts["B"].pop
      posts["C"] << posts["A"].pop
    end
  end
end

t = Tower.new
t.move!
t.posts
{"A" => [], "B" => [], "C" => [3,2,1]}
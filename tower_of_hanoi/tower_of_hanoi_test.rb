require './tower_of_hanoi'
require 'minitest/autorun'
require 'minitest/pride'

class TowerTest < Minitest::Test
  def test_it_moves_a_tower_of_1_disc
    t = Tower.new({"A" => [3], "B" => [], "C" => []})
    t.move!
    assert_equal ({"A" => [], "B" => [], "C" => [3]}), t.posts
  end
  def test_it_moves_a_tower_of_2_discs
    t = Tower.new({"A" => [3,2], "B" => [], "C" => []})
    t.move!
    assert_equal ({"A" => [], "B" => [3,2], "C" => []}), t.posts
  end
  def test_it_moves_a_tower_of_3_discs
    t = Tower.new({"A" => [3,2,1], "B" => [], "C" => []})
    t.move!
    assert_equal ({"A" => [], "B" => [], "C" => [3,2,1]}), t.posts
  end
end
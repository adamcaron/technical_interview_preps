require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './list.rb'

class ListTest < Minitest::Test

  def test_nodes_can_be_added_to_the_end
    skip
    list = List.new

    # assert_equal  list.push
  end


  def test_a_new_list_has_count_0
    list = List.new

    assert_equal 0, list.count
  end

  def test_push_adds_an_element_to_list
    list = List.new
    list.push(5)

    assert_equal 1, list.count
  end

  def test_pop_removes_last_element_from_the_list
    list = List.new
    list.push("something")

    list.pop

    assert_equal 0, list.count
  end
end
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './node.rb'

class NodeTest < Minitest::Test

  def test_new_nodes_are_empty_by_default
    node = Node.new

    assert_nil node.data
  end

  def test_it_can_hold_data
    node = Node.new("some data")

    assert_equal "some data", node.data
  end

  def test_its_next_node_pointer_is_to_nil_by_default
    node = Node.new("anything")

    assert_nil node.next
  end

  def test_it_can_point_to_another_node
    node = Node.new("anything")
    node_2 = Node.new("different")

    node.next = node_2

    assert_equal node_2, node.next
  end

end
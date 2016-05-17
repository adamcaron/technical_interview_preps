require './node.rb'

class List
  attr_reader :head

  def initialize
    @head = Node.new
  end

  def count(cur_count = 0, start = nil)
    start = self.head if start.nil?
    if start.next.nil?
      cur_count
    else
      cur_count += 1
      count(cur_count, start.next)
    end
  end

  def push(data)
    node = Node.new(data)
    if @head.nil?
      @head = node
    else
      add_node(@head, node)
    end
  end

  def add_node(start, node)
    if start.next.nil?
      start.next = node
    else
      add_node(start.next, node)
    end
  end

  def to_array(node=nil, list_array=[])
    node = self.head if node.nil?
    if node.next.nil?
      list_array << node.data
      list_array
    else
      to_array(node.next) << node.data
    end
  end

  def pop
    # move to the right until the node points to nil
    if start.next.nil?
      # set the previous node's pointer to nil
      # return the data of that node
    else
      # start = start.next
    end
  end

end
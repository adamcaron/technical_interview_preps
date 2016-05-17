class Node
  attr_reader :data
  attr_accessor :next

  def initialize(data = nil)
    @data = data
    @next = nil
  end

end
class LinkedList
  attr_reader :head, :tail, :length

  def initialize
    @length = 0
    @head = LinkedListNode.new
    @tail = LinkedListNode.new
  end

  def add item
  end

  def remove
  end
end

class LinkedListNode
  attr_accessor :val, :pointer

  def initialize(val = nil, pointer = nil)
    @val = val
    @pointer = pointer
  end
end


class LinkedList
  attr_reader :head, :tail, :length

  def initialize
    @length = 0
    @head = LinkedListNode.new
    @tail = LinkedListNode.new
  end

  #takes a value and adds it to the end of the list
  def addToTail value
    @length += 1
    newNode = LinkedListNode.new(value)
    oldTail = @tail
    oldTail.nextNode = newNode
    @tail = newNode
    @head.nextNode = newNode if @head.nextNode == nil
  end

  #removes the first node from the list and returns its value
  def removeHead
  end

  def contains?
  end
end

class LinkedListNode
  attr_accessor :val, :nextNode

  def initialize(val = nil, nextNode = nil)
    @val = val
    @nextNode = nextNode
  end

  def to_s
    "(val: [#{val}], nextNode: #{nextNode})"
  end
end


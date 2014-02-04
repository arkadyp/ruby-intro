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
    if @length == 1
      @head.nextNode = nil
      @tail.val = nil
      @length = 0
    elsif @length > 1
      @head.nextNode = @head.nextNode.nextNode
      @length -= 1
    end
  end

  def contains? target
    found = false
    currentNode = @head
    while(currentNode.nextNode) do
      currentNode = currentNode.nextNode
      if currentNode.val == target then
        found = true
        break;
      end
    end
    return found
  end

  def to_s
    str = ""
    currentNode = @head
    str << 'HEAD'
    while(currentNode.nextNode != nil) do
      currentNode = currentNode.nextNode;
      str << " --> #{currentNode.val}"
    end
    return str
  end
end

class LinkedListNode
  attr_accessor :val, :nextNode

  def initialize(val = nil, nextNode = nil)
    @val = val
    @nextNode = nextNode
  end

  def to_s
    "(val: [#{val}], nextNode: #{nextNode.val})"
  end
end


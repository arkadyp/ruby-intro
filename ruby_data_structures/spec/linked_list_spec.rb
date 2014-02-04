require '../src/linked_list.rb'

describe LinkedList do
  before(:each) do
    @linkedList = LinkedList.new
  end

  it "initializes with empty head and tail, length of zero" do
    @linkedList.head.val.should == nil
    @linkedList.head.nextNode.should == nil
    @linkedList.tail.val.should == nil
    @linkedList.tail.nextNode.should == nil
    @linkedList.length.should == 0

    #check that attr_accessor is working
    @linkedList.tail.val = LinkedListNode.new(4,5)
    @linkedList.tail.nextNode = 5
    @linkedList.tail.nextNode.should == 5
  end

  describe "addToTail" do
    it "should change length and value of tail" do
      @linkedList.tail.val.should == nil
      @linkedList.tail.nextNode.should == nil
      @linkedList.length.should == 0

      @linkedList.addToTail 1
      @linkedList.head.val.should == nil
      @linkedList.head.nextNode.val.should == 1
      @linkedList.tail.val.should == 1
      @linkedList.tail.nextNode.should == nil
      @linkedList.length.should == 1

      @linkedList.addToTail 2
      @linkedList.head.val = nil
      @linkedList.head.val.should == nil
      @linkedList.head.nextNode.val.should == 1
      @linkedList.tail.val.should == 2
      @linkedList.tail.nextNode.should == nil
      @linkedList.length.should == 2
    end
  end

  describe "removeHead" do
    it "should change length and value of head" do
      @linkedList.addToTail('a')
      @linkedList.addToTail('b')
      @linkedList.addToTail('c')
      @linkedList.head.nextNode.val.should == 'a'
      @linkedList.head.nextNode.nextNode.val.should == 'b'
      @linkedList.head.nextNode.nextNode.nextNode.val.should == 'c'
      @linkedList.tail.val.should == 'c'
      @linkedList.length.should == 3

      @linkedList.removeHead
      @linkedList.head.nextNode.val.should == 'b'
      @linkedList.head.nextNode.nextNode.val.should == 'c'
      @linkedList.tail.val.should == 'c'
      @linkedList.length.should == 2

      @linkedList.removeHead
      @linkedList.head.nextNode.val.should == 'c'
      @linkedList.tail.val.should == 'c'
      @linkedList.length.should == 1

      @linkedList.removeHead
      @linkedList.head.val.should == nil
      @linkedList.head.nextNode.should == nil
      @linkedList.tail.val.should == nil
      @linkedList.tail.nextNode.should == nil
      @linkedList.length.should == 0

      @linkedList.removeHead
      @linkedList.length.should == 0
    end
  end

    describe "contains?" do
    it "should correctly find values" do
      @linkedList.addToTail('a')
      @linkedList.addToTail('b')
      @linkedList.addToTail('c')
      @linkedList.contains?('a').should == true
      @linkedList.contains?('b').should == true
      @linkedList.contains?('c').should == true
      @linkedList.contains?('d').should == false
      @linkedList.removeHead
      @linkedList.addToTail 'e'
      @linkedList.contains?('a').should == false
      @linkedList.contains?('e').should == true
    end
  end


end
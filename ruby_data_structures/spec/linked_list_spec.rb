require '../src/linked_list.rb'

describe LinkedList do
  before(:each) do
    @linkedList = LinkedList.new
  end

  it "initializes with empty head and tail, length of zero" do
    @linkedList.head.val.should == nil
    @linkedList.head.val.should == nil
    @linkedList.tail.pointer.should == nil
    @linkedList.tail.pointer.should == nil
    #check that attr_accessor is working
    @linkedList.tail.pointer = 5
    @linkedList.tail.pointer.should == 5
    @linkedList.length.should == 0
  end



end
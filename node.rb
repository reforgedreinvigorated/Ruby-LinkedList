class Node
  attr_accessor :value
  attr_accessor :nextNode

  def initialize(value = nil, nextNode = nil)
    @value = value;
    @nextNode = nextNode;
  end

end
class Node
  attr_accessor :value
  attr_accessor :next

  def Node(value = nil, next = nil)
    @value = value;
    @next = next;
  end

end
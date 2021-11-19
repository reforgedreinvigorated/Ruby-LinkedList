require_relative 'node.rb'
class LinkedList
  attr_accessor :list

  def initialize()
    @list = nil;
  end
  #to_s represent your LinkedList objects as strings, so you can print them out and preview them in the console. The format should be: ( value ) -> ( value ) -> ( value ) -> nil
  def to_s
    currNode = @list
    str = ""
    while currNode != nil
      str += currNode.value + " -> "
      currNode = currNode.nextNode
    end
    str += "nil"
  end
  #append(value) adds a new node containing value to the end of the list
  def append(value)
    newNode = Node.new(value)
    if @list == nil
      @list = newNode
    else
      node = list
      while (node.nextNode != nil)
        node = node.nextNode
      end
      node.nextNode = newNode
    end
    #prepend(value) adds a new node containing value to the start of the list
    def prepend(value)
      newNode = Node.new(value)
      if @list == nil
        @list = newNode
      else
        prevList = list
        @list = newNode
        @list.nextNode = prevList
      end
    end
    #size returns the total number of nodes in the list
    def size
      node = @list
      size = 0
      while node != nil
        size += 1
        node = node.nextNode
      end
      size
    end
    #head returns the first node in the list
    def head
      @list
    end
    #tail returns the last node in the list
    def tail
      node = list
      while (node != nil)
        if node.nextNode == nil
          break
        end
        node = node.nextNode
      end
      node
    end
    #at(index) returns the node at the given index
    def at(index)
      idx = 0;
      node = list
      while (node != nil)
        return node if idx == index
        idx += 1
        node = node.nextNode
      end
      nil
    end
    #pop removes the last element from the list
    def pop
      return if list == nil

      lastElem = nil
      if list.nextNode == nil
        lastElem = list
        @list = nil
      else
        node = @list
        while (node != nil)
          if (node.nextNode != nil && node.nextNode.nextNode == nil)
            lastElem = node.nextNode
            node.nextNode = nil
            break
          end
          node = node.nextNode
        end
      end
      lastElem
    end
    #contains?(value) returns true if the passed in value is in the list and otherwise returns false.
    def contains?(value)
      node = list
      while node != nil
        return true if node.value == value
        node = node.nextNode
      end
      return false
    end
    #find(value) returns the index of the node containing value, or nil if not found.
    def find(value)
      idx = 0
      node = list
      while node != nil
        return idx if node.value == value
        idx += 1
        node = node.nextNode
      end
      return nil
    end

  end









end
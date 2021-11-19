require_relative "node.rb"
require_relative "linkedlist.rb"

linked_list = LinkedList.new()

linked_list.append("jabba")

puts linked_list.to_s

linked_list.pop

puts linked_list.to_s

linked_list.append("huttta")
linked_list.append("tesstaa")

puts linked_list.to_s

atI = linked_list.at(1)
puts "#{atI.value} was found at index 1"


linked_list.prepend("putfirst")

puts linked_list.to_s

linked_list.pop

puts linked_list.to_s

puts "did we found putfirst in list? #{linked_list.contains?("putfirst")}"

puts "did we found jackal in list? #{linked_list.contains?("jackal")}"

puts "idx of putfirst in list? #{linked_list.find("putfirst")}"

puts "idx of found jackal in list? #{linked_list.find("jackal")}"
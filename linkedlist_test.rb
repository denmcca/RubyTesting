require_relative 'linkedlist.rb'

def main
	# testing linked list
	puts "Creating linked list using LinkedList class"
	testLinkedList = LinkedList.new(Node.new(0))
	i = 1
	fin = 5
	while i < fin do
		testLinkedList.addNode(Node.new(i))
		i += 1
	end
	puts "current length is #{testLinkedList.getLength}"
	puts "Printing out LinkedList values"
	testLinkedList.print

	# testing removeNode method
	_indexToRemove = 3
	puts "Removing node from index #{_indexToRemove}"
	testLinkedList.removeNode(_indexToRemove)
	testLinkedList.print

	# testing setNode method
	puts "Testing setNode method"
	testLinkedList.setNode(2, -5)
	testLinkedList.print
end

main
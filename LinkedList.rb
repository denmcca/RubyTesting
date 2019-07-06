class Node
	def initialize(_val)
		@val = _val
		@next = nil
	end
	def getValue
		@val
	end
	def getNext
		@next
	end
	def setValue=(val)
		@val = val
	end
	def setNext=(_next)
		@next = _next
	end
end

class LinkedList
	def initialize(_head_node)
		@head = _head_node
		@tail = @head
		@length = 1
	end
	def addNode(_node)
		@tail.setNext = _node
		@tail = @tail.getNext
		@length += 1
	end
	def removeNode(_index)
		curr = @head
		i = 0
		if _index < 0
			puts "No negative values can be used as index"
			return
		end
		if _index > @length - 1
			puts "Index out of range"
			return
		end
		if _index == 0
			@head = @head.getNext
			@length -= 1
			return
		end
		while i < _index - 1 do
			curr = curr.getNext
			i += 1
		end
		
		curr.setNext = curr.getNext.getNext
		@length -= 1
	end
	def getNode(_index)
		i = 0
		curr = @head
		while i < _index do
			curr = curr.getNext
			i += 1
		end
		return curr
	end
	def getLength
		@length
	end
end
		
puts "Creating linkedlist using Nodes only"
		
head = Node.new(0)
curr = head;

i = 1
fin = 5

while i < fin do
	curr.setNext = Node.new(i)
	i += 1
	curr = curr.getNext
end

puts "Printing Nodes only linked list"
curr = head

while curr != nil do
	puts curr.getValue
	curr = curr.getNext
end

puts "Creating linked list using LinkedList class"

testLinkedList = LinkedList.new(Node.new(0))
i = 1

while i < fin do
	testLinkedList.addNode(Node.new(i))
	i += 1
end

puts "current length is #{testLinkedList.getLength}"

puts "Printing out LinkedList values"
i = 0
while i < testLinkedList.getLength do
	target_node = testLinkedList.getNode(i)
	puts target_node.getValue
	i += 1
end

_indexToRemove = 3
puts "Removing node from index #{_indexToRemove}"
testLinkedList.removeNode(_indexToRemove)

i = 0
while i < testLinkedList.getLength do
	target_node = testLinkedList.getNode(i)
	puts target_node.getValue
	i += 1
end

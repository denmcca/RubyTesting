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
	def setNode(_index, _value)
		if _index > -1 and _index < @length
			_node = getNode(_index).setValue = _value
		else
			puts "Index #{_index} out of range"
			puts "Must be between 0 and #{@length}"
		end	
	end
	def getLength
		@length
	end
	
	def print
		curr = @head
		while curr != nil
			puts curr.getValue
			curr = curr.getNext
		end
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

# testing linked list
puts "Creating linked list using LinkedList class"
testLinkedList = LinkedList.new(Node.new(0))
i = 1
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
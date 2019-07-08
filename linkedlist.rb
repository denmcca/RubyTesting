$LOAD_PATH << '.'
require 'node.rb'

=begin
instead of using $LOAD_PATH you can use
require_relative 'nodes.rb'
=end

=begin
list of methods
addNode
removeNode
getNode
setNode
insertNode
getLength
print
sort
=end

class LinkedList
	def initialize(_head_node)
		@head = _head_node
		@length = 1
	end
	def addNode(_node)
		curr = @head
		while curr.getNext != nil do
			curr = curr.getNext
		end
		curr.setNext = _node
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
	def insertNode(_index, _node)
		if _index < 0 or _index > @length
			puts "Index #{_index} is out of range"
			return
		end
		if _index == 0
			_node.setNext = @head
			@head = _node
		else
			i = 1
			curr = @head
			while i < _index do 
				curr = curr.getNext
				i += 1
			end
			_node.setNext = curr.getNext
			curr.setNext = _node			
		end
		@length += 1
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
	
	
	def sort
		#code
	end
end
require_relative 'node.rb'

def main
	puts "Creating linkedlist using Nodes only"
			
	head = Node.new
	curr = head

	i = 1
	fin = 5

	while i < fin do
		curr.setNext = Node.new(i)
		i += 1
		curr = curr.getNext
	end
	
	puts "Printing Nodes only linked list"
	curr = head

	while not (curr == nil) do
		puts curr.getValue
		curr = curr.getNext
	end
	
	puts "message: #{head.getNodeCount} nodes current exist"
end

main
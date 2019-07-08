class Node
	@@nodeCount = 0
	include Comparable
	attr :val
	def initialize(_val = 0)
		@val = _val
		@next = nil
		@@nodeCount += 1
		# sets delete method to be called at garbage collection
		ObjectSpace.define_finalizer(self, Node.method(:delete))
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
	def getNodeCount
		@@nodeCount
	end
	def <=>(other)
		unless other == nil
			@val <=> other.val
		end
	end
	def self.delete id	# called at garbage collection
		@@nodeCount -= 1
	end
end
=begin
n1 = Node.new(3)
n2 = Node.new(0)

puts n1 < n2
puts n1 > n2
puts n1 == n2
=end
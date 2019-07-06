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
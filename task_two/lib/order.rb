class Order

	attr_accessor :list

	def initialize
		@list = {} #when should be using a hash here
	end

	def add_lineitem(lineitem)
		@list[lineitem.dish] = lineitem.quantity
	end

	def remove_lineitem(lineitem)
		@list.delete(lineitem.dish)
	end

	def change_quantity(lineitem,4)
		
	end
end
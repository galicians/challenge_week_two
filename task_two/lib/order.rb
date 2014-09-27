class Order

	attr_accessor :list

	def initialize
		@list = {}
		@total = 0
	end

	def add_lineitem(lineitem)
		@list[lineitem.dish] = lineitem.quantity
	end

	def remove_lineitem(lineitem)
		@list.delete(lineitem.dish)
	end

	def dish_quantity(dish)
		@list[dish]  
	end

	def lineitem_change_quantity(lineitem,new_quantity)
		@list[lineitem.dish] = new_quantity
	end

	def calculate_total
		@list.each { |dish, quantity| @total += dish.price * quantity}
		@total
	end
end
class Menu

	attr_accessor :list

	def initialize
		@list = []
	end

	def remove_dish(dish)
		@list.delete(dish)
	end

	def add_dish(dish)
		@list << dish
	end
	
end
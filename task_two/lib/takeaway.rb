


class Takeaway


	attr_accessor :customers, :menu

	def initialize
		@customers = []
		@menu = []
	end

	def placing_order(phone_number,phone_order)
		customer_identification(phone_number)
		raise 'RuntimeError' if phone_order.empty?
		create_order(phone_order)
	end

	def customer_identification(phone_number)
		@customers.each do |customer|
			return customer if customer.phone_number == phone_number
		end
		@customers << Customer.new(phone_number)
	end

	
	def dish_in_menu?(dish)
		menu.include?(dish)
	end
	
	def create_order(phone_order)
		order = Order.new
		phone_order.each do |dish,quantity|
			order.add_lineitem(LineItem.new(dish,quantity)) if dish_in_menu?(dish)
		end
		order
	end
	
	def order_total(order)
		order.calculate_total
	end
end
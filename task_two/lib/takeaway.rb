


class Takeaway


	attr_accessor :customers, :menu

	def initialize
		@customers = []
		@menu = []
	end

	def placing_order(phone_number,phone_order)
		customer_identification(phone_number)
		raise 'RuntimeError' if phone_order.empty?
		# phone_order.each do |dish,quantity|
		# 	Line_item.new(dish,quantity) if dish_in_menu?(dish)
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
	
	
	
end
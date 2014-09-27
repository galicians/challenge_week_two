# require_relative 'order'
# require_relative 'customer'
# require_relative 'message'


class Takeaway


	attr_accessor :customers, :menu, :sender

	def initialize
		@customers = []
		@menu = []
		@sender
	end

	def placing_order(phone_number,phone_order)
		customer = customer_identification(phone_number)
		raise 'RuntimeError' if phone_order.empty?
		customer.orders << create_order(phone_order)
		customize_message(customer)
	end

	def customer_identification(phone_number)
		@customers.each { |existing_customer| return existing_customer if existing_customer.phone_number == phone_number }
		add_new_customer(phone_number)
	end

	def add_new_customer(phone_number)
		new_customer = Customer.new(phone_number)
		@customers << new_customer
		new_customer
	end
	
	def dish_in_menu?(dish)
		@menu.include?(dish)
	end
	
	def create_order(phone_order)
		order = Order.new
		phone_order.each { |dish,quantity| order.add_lineitem(LineItem.new(dish,quantity)) if dish_in_menu?(dish) }
		order
	end
	
	def total(order)
		order.calculate_total
	end

	def customize_message(customer)
		total_order = customer.orders.last.calculate_total
		message = "Thank you #{customer.name}! Your order was placed and will be delivered before #{Time.now.hour + 1}:#{Time.now.min }. Total cost: #{total_order} £"	
		send_sms(message,customer.phone_number)
	end

	def send_sms(message,phone_number)
		@sender.send(message,phone_number)
	end

end
require_relative 'lib/dish.rb'
require_relative 'lib/menu.rb'
require_relative 'lib/order.rb'
require_relative 'lib/takeaway.rb'
require_relative 'lib/message.rb'
require_relative 'lib/customer.rb'
require_relative 'lib/line_item.rb'
require_relative 'lib/message'


puts "all files have been loaded"

def create_data
	@paella = Dish.new('paella', 11)
	@burrito = Dish.new('burrito', 7)
	@line_item_one = LineItem.new(@burrito, 4)
	@line_item_two = LineItem.new(@paella, 2)
	@enrique_order = Order.new
	@pablo = Customer.new('Pablo',447565125107)
	@spanican = Takeaway.new
	@monday_menu = Menu.new
	@monday_menu.list << @paella
	@monday_menu.list << @burrito
	@spanican.menu = @monday_menu
	@twilio = Message.new
	@spanican.sender = @twilio
	@spanican.customers << @pablo
	@customer_order = {@paella => 2, @burrito => 3}
end
 	
 	create_data

puts @spanican.customers.inspect
puts @spanican.sender.inspect
puts @spanican.menu.inspect


#@spanican.placing_order(447565125107,@customer_order)





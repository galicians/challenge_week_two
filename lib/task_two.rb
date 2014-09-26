class Takeway

	MENU = {"Onion rings" => 3, 
		"Soup of the day" => 7,
		"Filet" => 10,
		"Cheese Burger" => 9,
		"Cheese Pizza"=> 10}

		attr_accessor :menu

		def initialize
			@menu = MENU
		end

		def validate_order(order)
			raise "RuntimeError" if order.empty?
			true
		end


end
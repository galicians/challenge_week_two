



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
		
		def validate_order(order,estimation)
			raise "RuntimeError" if order.empty?
			total = 0
			order.each do |dish,amount|
				total += @menu[dish] * amount
			end
			raise "RuntimeError" if total != estimation
			#"Thank you! Your order was placed and will be delivered before 18:52"
			total
		end


end
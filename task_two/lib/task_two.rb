# require 'rubygems'
# require 'twilio-ruby'
 
# # Get your Account Sid and Auth Token from twilio.com/user/account
# account_sid = 'ACb438c1bfff9eb07459aa295d5ba9e7e4'
# auth_token = '23be347aac1ac6da40c6da00e966c22d'
# @client = Twilio::REST::Client.new account_sid, auth_token

# time = Time.new.to_a 
# message = @client.account.messages.create(:body => "Thank you! Your order was placed and will be delivered before #{time[2] + 1}:#{time[1]}",
#     :to => "+447565125107",     # Replace with your phone number
#     :from => "+441275595037")   # Replace with your Twilio number
# puts message.sid




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
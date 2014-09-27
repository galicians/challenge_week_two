# require 'rubygems'
# require 'twilio-ruby'
 

# (customer, total)
# # Get your Account Sid and Auth Token from twilio.com/user/account
# account_sid = 'ACb438c1bfff9eb07459aa295d5ba9e7e4'
# auth_token = '23be347aac1ac6da40c6da00e966c22d'
# @client = Twilio::REST::Client.new account_sid, auth_token


# message = @client.account.messages.create(:body => "Thank you #{customer.name}! Your order was placed and will be delivered before #{time[2] + 1}:#{time[1]}",
#     :to => "#{customer.phone_number}",     # Replace with your phone number 
#     :from => "+441275595037")   # Replace with your Twilio number
# puts message.sid 

class Message

	
	def initalize(message,phone_number)
	# 	account_sid = 'ACb438c1bfff9eb07459aa295d5ba9e7e4'
	# 	auth_token = '23be347aac1ac6da40c6da00e966c22d'
	# 	@client = Twilio::REST::Client.new account_sid, auth_token
	end

	# def send_message
	# 	message = @client.account.messages.create(:body => "Thank you #{customer.name}! Your order was placed and will be delivered before #{time[2] + 1}:#{time[1]}",
	#     :to => "#{customer.phone_number}",     # Replace with your phone number 
	#     :from => "+441275595037")   # Replace with your Twilio number
	# 	puts message.sid
	# end

end
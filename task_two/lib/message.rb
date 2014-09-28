require 'rubygems'
require 'twilio-ruby'
 

class Message

	def initialize
		account_sid = 'ACb438c1bfff9eb07459aa295d5ba9e7e4'
		auth_token = '23be347aac1ac6da40c6da00e966c22d'
		@client = Twilio::REST::Client.new account_sid, auth_token
	end

	def send_message(message,phone_number)
		message = @client.account.messages.create(:body => message,
	    :to => "#{phone_number}",     # Replace with your phone number 
	    :from => "+441275595037")   # Replace with your Twilio number
		message.sid
	end
end
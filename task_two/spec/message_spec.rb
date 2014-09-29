require 'message'

describe Message do

	it "should text when message and phone number are provided" do
		message = "Thank you Pablo! Your order was placed and will be delivered before #{Time.now.hour + 1}:#{Time.now.min }."
		phone_number = 447565125107
		sender = Message.new
		expect(sender.send_message(message,phone_number)).to_not be nil
	end

end


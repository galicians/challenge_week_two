require 'takeaway'

describe Takeway do

	let(:takeway) { Takeway.new }
	order = {"Onion rings" => 1, "Soup of the day" => 2,"Filet" => 1,"Cheese Burger" => 2}
	
	it "should keep a list of dishes and prices" do
		expect(takeway.menu.class).to eq(Hash)
	end

	it "should raise an error if the order is empty" do
		empty_order = {}
		expect{ takeway.validate_order(empty_order,45) }.to raise_error("RuntimeError")
	end

	it "should be able to calculate the exact total of the order" do
		expect(takeway.validate_order(order,45)).to eq 45
	end

	it "should raise error if total doesn't match clients calculation" do
		client_estimation = 44
		expect{ takeway.validate_order(order,client_estimation) }.to raise_error("RuntimeError")
	end

end
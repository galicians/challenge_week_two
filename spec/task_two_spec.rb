require 'task_two'

describe Takeway do

	let(:takeway) { Takeway.new }
	order = {"Onion rings" => 1, "Soup of the day" => 2,"Filet" => 1,"Cheese Burger" => 2}
	
	it "should keep a list of dishes and prices" do
		expect(takeway.menu.class).to eq(Hash)
	end

	it "should raise an error if the order is empty" do
		empty_order = {}
		expect{ takeway.validate_order(empty_order) }.to raise_error("RuntimeError")
	end

	it "should be able to validate and order" do
		expect(takeway.validate_order(order)).to eq true
	end

end
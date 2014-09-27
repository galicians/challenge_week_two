require 'takeaway'

describe Takeaway do

	let(:takeaway) { Takeaway.new }
	let(:menu) { double :menu, list: paella}
	let(:paella) {double :dish, name: 'paella', price: 15}
	let(:order) {double :order, empty?: true}
	let(:customer) {double :customer, phone_number: 7777}

	it "should provide a list of customers" do
		20.times { takeaway.customers << customer }
		expect( takeaway.customers.size ).to eq 20
	end

	it "should provide a list dishes and prices" do
		takeaway.menu << paella
		expect(takeaway.menu).to eq [paella]
	end

	it "should identify if the number of the incoming call belongs to an existing customer" do
		takeaway.customers << customer
		expect(takeaway.customer_identification(7777)).to be customer
	end

	it "should create a new customer if there is no match for the phone number" do
		takeaway.customer_identification(8888)
		expect(takeaway.customers.size).to be 1
	end

	it "should raise an error if the order is empty" do
		expect{ takeaway.placing_order(7777,order) }.to raise_error("RuntimeError")
	end

	it "will check if the customer dishes are in the menu" do
		takeaway.menu << paella
		takeaway.dish_in_menu?(paella)
	end





end
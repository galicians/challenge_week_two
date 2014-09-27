require 'order'

describe Order do
	let(:dish) {double :dish, name: :paella, price: 12}
	let(:lineitem) { double :lineitem, dish: dish, quantity: 3}
	let(:order) { Order.new }

	it "should be empty when initialized" do
		expect(order.list).to eq({})
	end

	it "should accept lineitems" do
		order.add_lineitem(lineitem)
		expect(order.list.size).to eq 1
	end

	it "should allow to to delete a specific lineitem from it" do
		order.add_lineitem(lineitem)
		order.remove_lineitem(lineitem)
		expect(order.list.size).to eq 0
	end

	it "should allow to change the quantity of a specific lineitem" do
		expect(lineitem.quantity).to eq 3
		order.change_quantity(lineitem)
	end

	it "should allow to change the dish of a specific lineitem" do

	end

	it "should have a total" do
	end

end
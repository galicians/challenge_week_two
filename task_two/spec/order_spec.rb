require 'order'

describe Order do
	let(:dish) {double :dish, name: :paella, price: 12}
	let(:dish2) {double :dish, name: :burrito, price: 8}
	let(:lineitem) { double :lineitem, dish: dish, quantity: 16}
	let(:lineitem2) { double :lineitem, dish: dish2, quantity: 7}
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

	it "should show the quantity when dish is provided" do
		order.add_lineitem(lineitem)
		expect(order.dish_quantity(dish)).to eq 16
	end

	it "should allow to change the quantity of a specific lineitem" do
		expect(lineitem.quantity).to eq 16
		order.lineitem_change_quantity(lineitem,7)
		expect(order.dish_quantity(dish)).to eq 7
	end

	it "should provide a total" do
		order.add_lineitem(lineitem)
		order.add_lineitem(lineitem2)
		expect(order.calculate_total).to be 248
	end

end
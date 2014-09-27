require 'line_item'

describe LineItem do
	let(:paella) { double :dish }
	let(:onion_rings) { double :dish, price: 5 }


	it "should be initialized with a dish and quantity" do
		expect{ LineItem.new(paella) }.to raise_exception
		expect{ LineItem.new(25) }.to raise_exception
	end

	it "after is initialized should provide the total" do
		lineitem1 = LineItem.new(onion_rings, 5)
		expect(lineitem1.total).to eq 25
	end

end
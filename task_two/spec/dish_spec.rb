require 'dish'

describe Dish do

	let(:dish) { Dish.new }
	
	it "should be intialized with a name and a price" do
		expect(dish.name).to_not be nil
		expect(dish.price).to_not be nil
	end

	it "price can be modified" do
		expect(dish.name = 'Tortilla'). to eq 'Tortilla'
	end

	it "name can be modified" do
		expect(dish.price = 111).to eq 111
	end

	

end
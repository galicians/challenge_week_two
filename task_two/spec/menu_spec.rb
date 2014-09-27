require 'menu'

describe Menu do

	let(:menu) { Menu.new }
	let(:dish) {double :dish}

	it "will be and empty list when initialized" do
		expect(menu.list).to eq([])
	end


	it "will offer the possibility to add a new dish" do
		menu.add_dish(dish)
		expect(menu.list).to eq([dish])
	end


	it "will offer the possibility to delete a dish from it" do
		menu.add_dish(dish)
		expect(menu.remove_dish(dish)).to eq dish
		expect(menu.list).to eq []
	end


end
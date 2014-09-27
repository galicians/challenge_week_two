# require 'customer'

# describe Customer do

# 	let(:customer) { Customer.new(11111) }
# 	order = {"Onion rings" => 1, "Soup of the day" => 2,"Filet" => 1,"Cheese Burger" => 2}
# 	let(:takeaway) { double :takeaway, va_order: true}
	
	
# 	it "is initialized with a phone number" do
# 		expect(customer.phone_number).to be 11111
# 	end


# 	it "can hold a name" do
# 		customer.name = 'Jon Smith'
# 		expect(customer.name).to eq 'Jon Smith'
# 	end

# 	it "can hold an address" do
# 		customer.address = "Makers Academy"
# 		expect(customer.address).to eq "Makers Academy"
# 	end

# 	it "can hold an order" do
# 		customer.orders << order
# 		expect(customer.orders).to eq [order]
# 	end

# 	it "places an order, with the price that estimates" do
# 		expect(customer.makes_order(order,estimation)).to be true
# 	end
# end


require 'customer'

describe Customer do

	let(:customer) { Customer.new(11111) }

	let(:takeaway) { double :takeaway, validate_order: true}
	
	
	it "is initialized with a phone number" do
		expect(customer.phone_number).to be 11111
	end


	it "can hold a name" do
		customer.name = 'Jon Smith'
		expect(customer.name).to eq 'Jon Smith'
	end

	it "can hold an address" do
		customer.address = "Makers Academy"
		expect(customer.address).to eq "Makers Academy"
	end

	it "will order" do
		
		
	end


end


require 'task_one'

describe Array do

	array = [*1..5]

	it "testing inject using iterators" do
		expect(array.inject_using_iterators).to eq(15)

	end


end
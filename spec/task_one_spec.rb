require 'task_one'

describe Array do

	array = [*1..5]

	it "method duplicating inject using iterators" do
		expect(array.inject_using_iterators).to eq 15
		expect(array.inject_using_iterators(10)).to eq 25
	end

	it "method duplicating inject using recursion" do
		expect(array.inject_using_recursion!).to eq 15
		expect([*1..5].inject_using_recursion!(10)).to eq 25
	end


end
require 'task_one'

describe Array do

	array = [0,5,7,9]

	it "inject should raise an error when it does not called by []" do
		expect{ 7.inject_using_iterators }.to raise_error
	end

	it "inject should return the the result of the block" do
	 	expect(array.inject_using_iterators {|memo,x| x * x }).to eq 81
	end

	it "inject should accept an accumulator as a parameter" do
		expect(array.inject_using_iterators(5){|memo,x| memo += x }).to eq 26
	end
end
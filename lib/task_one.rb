class Array

	def inject_using_iterators
		memo = 0
		self.each {|element| memo += element}
		memo
	end



end
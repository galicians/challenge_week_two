class Array

	def inject_using_iterators(memo=0)
		self.each {|element| memo += element}
		memo
	end

	def inject_using_recursion!(memo=0)
		return memo if self.size == 0
		memo = memo + inject_using_recursion!(self.pop)
	end

end
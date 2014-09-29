class Array

	def inject_using_iterators(memo=0,&blk)
		array = self
		if memo == 0
			memo = self.first
			array.shift
		end
		array.each do |x|
			memo = yield memo,x
			puts memo
		end
		memo
	end

end




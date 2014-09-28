class Array

	def inject_using_iterators(memo=0,&blk)
		self.each do |x|
			memo = yield memo,x
		end
		memo
	end

end




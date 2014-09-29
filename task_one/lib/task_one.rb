class Array

	def inject_iterators(memo=0,&blk)
		array = self.clone
		if memo == 0
			memo = first
			array.shift
		end
		array.each do |x|
			memo = yield memo,x
		end
		memo
	end

	def inject_recursion(memo=0,&blk)
		return memo if empty?
		memo = yield memo,first
		shift
		inject_recursion(memo,&blk)
	end

end




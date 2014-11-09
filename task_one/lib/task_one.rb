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

	def inject_recursion(memo='a',&blk)
		return memo if empty?
		return self.slice(1,self.size).inject_recursion(first,&blk) if 'a'
		memo = yield memo,first
		self.slice(1,self.size).inject_recursion(memo,&blk)
	end


	def inject_nil(memo=nil,&blk)
		array = self.clone
		if !memo
			memo = first
			array.shift
		end
		array.each do |x|
			memo = yield memo,x
		end
		memo
	end

end


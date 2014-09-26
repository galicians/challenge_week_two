

def recursion_sum(num)
	return num if num == 0
	num = num + recursion_sum(num-1)
end

puts recursion_sum(4)


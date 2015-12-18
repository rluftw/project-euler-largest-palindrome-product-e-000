# Implement your procedural solution here!

def is_palindrome(i)
	i_as_string = i.to_s
	i_as_string == i_as_string.reverse
end

def largest_palindrome_product
	largest = 0
	100.upto(999).select do |op1|
		100.upto(999).select do |op2|
			answer = op1 * op2
			if is_palindrome(answer) && answer > largest
				largest = answer
			end
		end
	end
	largest
end

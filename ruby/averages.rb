# Get the averages of these numbers

# Write a method, that gets an array of integer-numbers and return an array of the averages of each integer-number and his follower, if there is one.

# Example:

# Input:  [ 1, 3, 5, 1, -10]
# Output:  [ 2, 4, 3, -4.5]

# Test.describe("Basic Tests") do
# Test.assert_equals(averages([2, 2, 2, 2, 2]),[2, 2, 2, 2])
# Test.assert_equals(averages([2, -2, 2, -2, 2]),[0, 0, 0, 0])
# Test.assert_equals(averages([1, 3, 5, 1, -10]),[2, 4, 3, -4.5])
# Test.assert_equals(averages([]),[])
# Test.assert_equals(averages(nil),[])
# end


def averages(arr)
	averages = []
	return averages if arr.nil? || arr.empty?

	arr.each_with_index do |num, index|    #[1, 3, 5, 1, -10]
		averages << ((num + arr[index + 1])/2.0)# (1 + 3)/2
		break if index == (arr.size - 2)
	end
	return averages
end

# def averages(arr)
#   arr.each_cons(2).map { |x,y| (x+y).fdiv(2) } rescue []
# end


print averages([2, 2, 2, 2, 2])
puts
print averages([2, -2, 2, -2, 2])
puts
print averages([1, 3, 5, 1, -10])
puts
print averages([])
puts
print averages([nil])



# def averages(arr)
#   if arr.kind_of?(Array) and arr.length > 2
#     arr.inject(:+) - arr.min - arr.max
#   else
#     0
#   end
# end
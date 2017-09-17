# Sum all the numbers of the array except the highest and the lowest element (the value, not the index!).
# (Only one element at each edge, even if there are more than one with the same value!)

# Example:

# { 6, 2, 1, 8, 10 } => 16
# # { 1, 1, 11, 2, 3 } => 6

# require 'byebug'

# Test.describe("Basic tests") do
# Test.it("nil or Empty") do
# Test.assert_equals(sum_array(nil), 0)
# Test.assert_equals(sum_array([]), 0)
# end
# Test.it("Only one Element") do
# Test.assert_equals(sum_array([3]), 0)
# Test.assert_equals(sum_array([-3]), 0)
# end
# Test.it("Only two Element") do
# Test.assert_equals(sum_array([ 3, 5]), 0)
# Test.assert_equals(sum_array([-3, -5]), 0)
# end
# Test.it("Real Tests") do
# Test.assert_equals(sum_array([6, 2, 1, 8, 10]), 16)
# Test.assert_equals(sum_array([6, 0, 1, 10, 10]), 17)
# Test.assert_equals(sum_array([-6, -20, -1, -10, -12]), -28)
# Test.assert_equals(sum_array([-6, 20, -1, 10, -12]), 3)
# end
# end


def sum_array(arr)
	if arr == nil || arr.size < 3
		return 0
	else
		arr.sort!
		arr.shift && arr.delete_at(arr.size - 1)
		return arr.inject{|sum, e| sum + e}
	end
end

# def sum_array(arr)
#   if arr.kind_of?(Array) and arr.length > 2
#     arr.inject(:+) - arr.min - arr.max
#   else
#     0
#   end
# end
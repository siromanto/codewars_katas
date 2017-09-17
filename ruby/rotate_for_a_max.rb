# Rotate for a Max

# Take a number: 56789. Rotate left, you get 67895.
# Keep the first digit in place and rotate left the other digits: 68957.
# Keep the first two digits in place and rotate the other ones: 68579.
# Keep the first three digits and rotate left the rest: 68597. Now it is over since keeping the first four it remains only one digit which rotated is itself.
# You have the following sequence of numbers:

# 56789 -> 67895 -> 68957 -> 68579 -> 68597

# and you must return the greatest: 68957.

# Calling this function max_rot (or maxRot or ... depending on the language)
# max_rot(56789) should return 68957


# def testing(actual, expected)
#     Test.assert_equals(actual, expected)
# end

# Test.describe("max_rot") do
#     Test.it("Basic tests") do
#         testing(max_rot(38458215), 85821534)
#         testing(max_rot(195881031), 988103115)
#         testing(max_rot(896219342), 962193428)
#         testing(max_rot(69418307), 94183076)
#     end
# end

def max_rot(n) # 56789
		maxRot = n # 56789
		rotate = n.size # 5
		fixnum = []
		check_max = []
		numToArr = n.to_s.split(//) # ["5", "6", "7", "8", "9"]
		while rotate != 1 do
			first_rotate = numToArr.shift # ["5"] ["6", "7", "8", "9"]
			numToArr.insert(-1, first_rotate) # ["6", "7", "8", "9", "5"]
			check_max = fixnum + numToArr
			check_max.join.to_i > maxRot ? maxRot = check_max.join.to_i : maxRot
			fixnum << numToArr.shift #  ["6"] ["7", "8", "9", "5"]
			rotate -= 1
		end
		return maxRot
end


# def max_rot(num)
#   numbers = []
#   array = num.to_s.split('').map! {|x|x.to_i}
#   i = 0
#   while i < num.to_s.length  
#     array.insert(-1, array.delete_at(i))
#     numbers << array.join('').to_i
#     i+=1
#   end
#   numbers << num 
#   numbers.uniq!.max  
# end 

puts max_rot(56789) # 68957
puts max_rot(38458215) # 85821534
puts max_rot(195881031) # 988103115)
puts max_rot(896219342) # 962193428)
puts max_rot(69418307) # 94183076)
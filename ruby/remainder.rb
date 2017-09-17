# Write a function that accepts two arguments and returns the remainder 
# after dividing the larger number by the smaller number. 
# Division by zero should return NaN. Arguments will both be integers.


# escribe 'Remainder Function' do
#   it 'Should handle arguments and math as defined in specificaitons' do
#     Test.assert_equals(remainder(17,5), 2, 'Returned value should be the value left over after dividing as much as possible.')
#     Test.assert_equals(remainder(13, 72), remainder(72, 13), 'The order the arguments are passed should not matter.')
#     Test.expect(remainder(1, 0).nil?, 'Divide by zero should return nil')
#     Test.expect(remainder(0, 0).nil?, 'Divide by zero should return nil')
#   end
# end

def my_remainder(a, b)
	return nil if a == 0 || b == 0
	return a.abs % b.abs if a.abs >= b.abs
	return b.abs % a.abs if b.abs > a.abs
end

puts my_remainder(17, 5)
puts my_remainder(13, 72)
puts my_remainder(1, 0)
puts my_remainder(0, 213)
puts my_remainder(0, 0)


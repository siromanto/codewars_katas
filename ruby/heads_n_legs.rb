# Description

# Everybody has probably heard of the animal heads and legs problem 
# from the earlier years at school. 
# It goes: “A farm contains chickens and cows. 
# There are x legs and y heads. How many chickens and cows are there?”

# Where x <= 1000 and y <=1000

# Task

# Assuming there are no other types of animals, work out how many of each animal are there.
# Return a tuple in Python - (Heads, Legs) and an array list - [Heads, Legs]/{Heads, Legs} 
# in all other languages
# If either the heads & legs is negative, the result of your calculation 
# is negative or the calculation is a float return "No solutions" (no valid cases).

# In the form:

# [Heads, Legs] = [72, 200]

# VALID - [72, 200] =>             [44 , 28]   
#                              [Chickens, Cows]

# INVALID - [72, 201] => "No solutions"

# However, if 0 heads and 0 legs are given always return [0, 0] since zero heads must give zero animals.
# There are many different ways to solve this, but they all give the same answer.
# You will only be given integers types - however negative values (edge cases) will be given.
# Happy coding!

# Test.describe("Basic tests") do
# Test.it("Valid number of animals") do
# Test.assert_equals(animals(72, 200), [44, 28])
# Test.assert_equals(animals(116, 282), [91, 25])
# Test.assert_equals(animals(12, 24), [12, 0])
# Test.assert_equals(animals(6, 24), [0, 6])
# Test.assert_equals(animals(344, 872), [252, 92])
# Test.assert_equals(animals(158, 616), [8, 150])
# end

# Test.it("Invalid number of animals") do
# Test.assert_equals(animals(25, 555), "No solutions")
# Test.assert_equals(animals(12, 25), "No solutions")
# Test.assert_equals(animals(54, 956), "No solutions")
# Test.assert_equals(animals(5455, 54956), "No solutions")
# end

# Test.it("Edge cases") do
# Test.assert_equals(animals(0, 0), [0, 0])
# Test.assert_equals(animals(-1, -1), "No solutions")
# Test.assert_equals(animals(500, 0), "No solutions")
# Test.assert_equals(animals(0, 500), "No solutions")
# Test.assert_equals(animals(-45, 5), "No solutions")
# Test.assert_equals(animals(5, -55), "No solutions")
# end
# end

def animals(heads, legs)
	if heads < 0 || legs < 0 || legs.odd?
		return "No solutions"
	else
		two_legs_test = heads * 2
		remainder = legs - two_legs_test
			if remainder == 0
				return [heads, 0]
			else
				four_legs = remainder / 2 
				two_legs = heads - four_legs
				if two_legs < 0 || four_legs < 0
					return "No solutions"
				else
					return [two_legs, four_legs]
				end
			end
	end
end

# def animals(heads, legs)
#   if heads == 0 and legs == 0
#     [0,0]
#   else
#     a = [heads - (legs / 2 - heads), legs / 2 - heads]
#     if a[0] < 0 or a[1] < 0 or heads < 0 or legs < 0 or legs % 2 != 0
#       'No solutions'
#     else
#       a
#     end
#   end
# end

# def animals(heads, legs)
#   chickens = (2 * heads) - (legs / 2)
#   cows = heads - chickens
#   animals = [chickens, cows]
#   animals.any? { |animal| animal < 0 } == true ? "No solutions" : heads % 2 > 0 or legs % 2 > 0 ? "No solutions" : animals
# end


print animals(72, 200)
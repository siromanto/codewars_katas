# TODO: TDD development by writing your own tests as you solve the kata.
# These are some of the methods available:
#   Test.expect(boolean, [optional] message)
#   Test.assert_equals(actual, expected, [optional] message)
#   Test.assert_not_equals(actual, expected, [optional] message)

def uefa_euro_2016(teams, scores)
	if scores[0] > scores[1]
		return "At match #{teams[0]} - #{teams[1]}, #{teams[0]} won!"
	elsif scores[0] < scores[1]
		return "At match #{teams[0]} - #{teams[1]}, #{teams[1]} won!"
	else
		return "At match #{teams[0]} - #{teams[1]}, teams played draw."
	end
end

puts uefa_euro_2016(['Germany', 'Ukraine'],[2, 0]) # "At match Germany - Ukraine, Germany won!"
puts uefa_euro_2016(['Belgium', 'Italy'],[0, 2]) # "At match Belgium - Italy, Italy won!"
puts uefa_euro_2016(['Portugal', 'Iceland'],[1, 1]) # "At match Portugal - Iceland, teams played draw."

# def uefa_euro_2016(teams, scores)
#   outcome = case scores.inject(:<=>)
#   when 0
#     "teams played draw."
#   when 1
#     "#{teams.first} won!"
#   else
#     "#{teams.last} won!"
#   end
  
#   "At match #{teams.join(' - ')}, #{outcome}"
# end


# describe "UEFA EURO 2016" do
#   it "should return correct results" do
#     Test.assert_equals(uefa_euro_2016(['Germany', 'Ukraine'], [2, 0]), "At match Germany - Ukraine, Germany won!")
#     Test.assert_equals(uefa_euro_2016(['Belgium', 'Italy'], [0, 2]), "At match Belgium - Italy, Italy won!")
#     Test.assert_equals(uefa_euro_2016(['Portugal', 'Iceland'], [1, 1]), "At match Portugal - Iceland, teams played draw.")
#   end
# end
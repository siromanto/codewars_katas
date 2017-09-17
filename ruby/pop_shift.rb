# You will be given a string.

# You need to return an array of three strings by gradually pulling apart the string.
# You should repeat the following steps until the string length is 1:
# a) remove the final character from the original string, add to solution string 1. 
# b) remove the first character from the original string, add to solution string 2.
# The final solution string value is made up of the remaining character from the original string, once originalstring.length == 1.

# Example:
# "exampletesthere" becomes: ["erehtse","example","t"]

# Test.describe("Basic tests") do
# Test.assert_equals(pop_shift("reusetestcasesbitcointakeovertheworldmaybewhoknowsperhaps"), ["spahrepswonkohwebyamdlroweht","reusetestcasesbitcointakeove", "r"])
# Test.assert_equals(pop_shift("turnsoutrandomtestcasesareeasierthanwritingoutbasicones"), ["senocisabtuognitirwnahtreis","turnsoutrandomtestcasesaree", "a"])
# Test.assert_equals(pop_shift("exampletesthere"), ["erehtse","example","t"])
# Test.assert_equals(pop_shift("letstalkaboutjavascriptthebestlanguage"), ["egaugnaltsebehttpir","letstalkaboutjavasc",""])
# Test.assert_equals(pop_shift("iwanttotraveltheworldwritingcodeoneday"), ["yadenoedocgnitirwdl","iwanttotravelthewor",""])
# Test.assert_equals(pop_shift("letsallgoonholidaysomewhereverycold"), ["dlocyreverehwemos","letsallgoonholida","y"])
# end


def pop_shift(str)
	str_1, str_2 = "",""
	new_str = []
	str2arr = str.split(//)
	while str2arr.size > 1
		str_1 << str2arr.shift
		str_2 << str2arr.pop
	end
	if str2arr == nil
		return new_str << str_2 << str_1 << ""
	else
		return new_str << str_2 << str_1 << str2arr.join
	end
end


print pop_shift("reusetestcasesbitcointakeovertheworldmaybewhoknowsperhaps") # ["spahrepswonkohwebyamdlroweht","reusetestcasesbitcointakeove", "r"])
puts
print pop_shift("turnsoutrandomtestcasesareeasierthanwritingoutbasicones") #["senocisabtuognitirwnahtreis","turnsoutrandomtestcasesaree", "a"])
puts
print pop_shift("exampletesthere") # ["erehtse","example","t"])
puts
print pop_shift("letstalkaboutjavascriptthebestlanguage") # ["egaugnaltsebehttpir","letstalkaboutjavasc",""])
puts
print pop_shift("iwanttotraveltheworldwritingcodeoneday") # ["yadenoedocgnitirwdl","iwanttotravelthewor",""])
puts
print pop_shift("letsallgoonholidaysomewhereverycold") # ["dlocyreverehwemos","letsallgoonholida","y"])
puts
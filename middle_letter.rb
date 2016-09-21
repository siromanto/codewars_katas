# You are going to be given a word. 
# Your job is to return the middle character of the word. 
# If the word's length is odd, return the middle character. 
# If the word's length is even, return the middle 2 characters.

# Test.describe("Basic tests") do
# Test.assert_equals(get_middle("test"),"es")
# Test.assert_equals(get_middle("testing"),"t")
# Test.assert_equals(get_middle("middle"),"dd")
# Test.assert_equals(get_middle("A"),"A")
# Test.assert_equals(get_middle("of"),"of")
# end

def get_middle(s)
	if s.size.odd?
		average_letter = s.size.div 2 #3
		return s[average_letter]
	elsif s.size.even?
		average_letter = s.size.div 2
		return s[(average_letter - 1)..average_letter]
	end
end

# def get_middle(s)
# 	s[(s.size-1)/2..s.size/2]
# end
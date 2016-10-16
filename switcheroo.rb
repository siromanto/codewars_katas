# Given a string made up of letters a, b, and/or c, 
# switch the position of letters a and b (change a to b and vice versa). 
# Leave any incidence of c untouched.

# Example:

# 'acb' --> 'bca'
# 'aabacbaa' --> 'bbabcabb'


# TODO: Replace examples and use TDD development by writing your own tests
# These are some of the methods available:
#   Test.expect(boolean, [optional] message)
#   Test.assert_equals(actual, expected, [optional] message)
#   Test.assert_not_equals(actual, expected, [optional] message)

# describe "Example Tests" do
#   it "testing..." do
#     Test.assert_equals(switcheroo("abc"), "bac")
#     Test.assert_equals(switcheroo('aaabcccbaaa'), 'bbbacccabbb') 
#     Test.assert_equals(switcheroo('ccccc'), 'ccccc')
#   end
# end

def switcheroo(x)
  x.gsub(/[ab]/, 'a' => 'b',  'b' => 'a')
end

# def switcheroo(x) 
#   x.gsub("a", "x").gsub("b", "a").gsub("x", "b")
# end

# def switcheroo(x) 
#   x.tr('ab','ba')
# end


switcheroo("abc") # "bac"
switcheroo('aaabcccbaaa') # 'bbbacccabbb'
switcheroo('ccccc') # 'ccccc'
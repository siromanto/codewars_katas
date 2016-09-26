# Gordon Ramsay shouts. He shouts and swears. There may be something wrong with him.

# Anyway, you will be given a string of four words. 
# Your job is to turn them in to Gordon language.

# Rules:

# Obviously the words should be Caps, Every word should end with '!!!!', 
# Any letter 'a' or 'A' should become '@', Any other vowel should become '*'.

# describe "Basic Test" do
# 	it "Simple Cases" do
# 		#Test.assert_equals(gordon('What feck damn cake'), 'WH@T!!!! F*CK!!!! D@MN!!!! C@K*!!!!')
# 		Test.assert_equals(gordon('are you stu pid'), '@R*!!!! Y**!!!! ST*!!!! P*D!!!!') 
# 		Test.assert_equals(gordon('i am a chef'), '*!!!! @M!!!! @!!!! CH*F!!!!')
# 		Test.assert_equals(gordon('dont you talk tome'), 'D*NT!!!! Y**!!!! T@LK!!!! T*M*!!!!') 
# 		Test.assert_equals(gordon('how dare you feck'), 'H*W!!!! D@R*!!!! Y**!!!! F*CK!!!!')
# 	end
# end


def gordon(a)
	a.upcase!
	a.gsub!(/[A]/, '@').gsub!(/[UIOE]/, '*')
	arr = a.split.each do |word|
		word << "!!!!"
	end
	arr.join " "
end

# def gordon(a)
#     a.upcase.gsub(/[a]/i, '@').gsub(/[eiou]/i, '*').gsub(/\s+/, "!!!! ") + '!!!!'
# end



print gordon('What feck damn cake')
puts
print gordon('are you stu pid')
puts
print gordon('i am a chef')
puts
print gordon('dont you talk tome')
puts
print gordon('how dare you feck')
puts
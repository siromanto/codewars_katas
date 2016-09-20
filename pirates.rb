a = {'Mike':'aye','Joe':'aye','Johnson':'aye','Peter':'aye'}
b = {'Mike':'aye','Joe':'nay','Johnson':'aye','Peter':'aye'}

# def cannons_ready(gunners)
# 	if gunners.value? 'nay'
# 		return "Shiver me timbers!"
# 	else
# 		return "Fire!"
# 	end
# end

def cannons_ready(gunners)
  gunners.value?('nay') ? 'Shiver me timbers!' : 'Fire!'
end

puts cannons_ready(a)
puts cannons_ready(b)


# We need a function that receives two arrays arr1 and arr2, each of them, with elements that occur only once. We need to know:

# (1) Number of elements that are present in both arrays
# (2) Number of elements that are present in only one array
# (3) Number of remaining elements after extracting to arr1, the elements that are present in arr2.
# (4) Number of remaining elements after extracting to arr2, the elements that are present in arr1.
# Explaining the features of this function, let's name it process_2arrays()(ruby and python), process2Arrays()(javascript), we show graphically how it should operate:

# process_2arrays(arr1, arr2) == [(1), (2), (3), (4)]  # (data required above)
# Let's see some cases:

# arr1 = [1, 2 ,3, 4, 5 ,6 ,7 ,8 ,9]
# arr2 = [2, 4, 6, 8, 10, 12, 14]
# process_2arrays(arr1, arr2) --------> [4, 8, 5, 3]

# (1) ---> 4 # because the elements present in both arryas are: 2, 4, 6 and 8 (4 values)
# (2) ---> 8 # beacause elements present in only one array are: 1, 3, 5, 7, 9, 10, 12, and 14 (8 values)
# (3) ---> 5 # elements remaning of arr1 are: 1, 3, 5, 7, 9
# (4) ---> 3 # elements remaning of arr2 are: 10, 12, 14
# No doubt, an easy kata to warm up before doing the more complex ones. Enjoy it!

def process_2arrays(arr1, arr2)
	act1 = arr1 & arr2
	act3 = arr1 - arr2
	act4 = arr2 - arr1
	act2 = act3 + act4
	return [(act1.size), (act2.size), (act3.size), (act4.size)]
end

# First solution
# def process_2arrays arr1, arr2
#   both = (arr1 & arr2).size
#   d1 = arr1.size - both
#   d2 = arr2.size - both
#   [both, d1 + d2, d1, d2]
# end

# One more solution
# require "set"
# def process_2arrays(arr1, arr2)
#   first, second = arr1.to_set, arr2.to_set
#   [first & second, first ^ second, first - second, second - first].map(&:length)
# end

arr1 = [1, 2, 3, 4, 5, 6, 7, 8, 9]
arr2 = [2, 4, 6, 8, 10, 12, 14]
puts process_2arrays(arr1, arr2) # [4, 8, 5, 3])


arr1 = [33, 2, 3, 37, 38, 40, 12, 10, 43, 44, 47, 49, 8, 19, 22, 24, 26, 28, 29, 30]
arr2 = [1, 34, 17, 7, 9, 10, 43, 49, 22, 27, 28]
puts process_2arrays(arr1, arr2) # [5, 21, 15, 6])

arr1 = [32, 34, 3, 4, 39, 10, 43, 13, 11, 18, 21, 22, 7, 25, 26, 36] 
arr2 = [32, 5, 38, 8, 41, 42, 12, 48, 40, 21, 22, 26, 10, 30] 
puts process_2arrays(arr1, arr2) # [5, 20, 11, 9])

arr1 = [0, 33, 37, 6, 10, 44, 13, 47, 16, 18, 22, 25] 
arr2 = [1, 38, 48, 8, 41, 7, 12, 47, 16, 40, 20, 23, 25] 
puts process_2arrays(arr1, arr2) $, [3, 19, 9, 10])

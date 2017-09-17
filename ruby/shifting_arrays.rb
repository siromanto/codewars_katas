def adding_shifted(arr, shift)
  arr = arr.each_with_index do |a,i|
    (i*shift).times { a.unshift(0) }
    ((arr.length-i-1)*shift).times { a.push(0) }
  end
  arr.transpose.map { |x| x.reduce(:+) }
end

a = adding_shifted([[1,2,3,4,5,6], [7,7,7,7,7,-7]], 0)
print a
puts


def get_average(marks)
  marks.inject {|sum, n| sum + n}/marks.size
end

describe "get_average" do
  it "works for some examples" do
    Test.assert_equals(get_average([2, 2, 2, 2]), 2, "didn't work for [2, 2, 2, 2]")
    Test.assert_equals(get_average([1, 5, 87, 45, 8, 8]), 25, "didn't work for [1, 5, 87, 45, 8, 8]")
    Test.assert_equals(get_average([2,5,13,20,16,16,10]), 11, "didn't work for [2,5,13,20,16,16,10]")
    Test.assert_equals(get_average([1,2,15,15,17,11,12,17,17,14,13,15,6,11,8,7]), 11, "didn't work for [1,2,15,15,17,11,12,17,17,14,13,15,6,11,8,7]")
  end
end
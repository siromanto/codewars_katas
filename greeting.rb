def greet(name)
  return "Hello, my love!" if name == "Johnny"
  return "Hello, #{name}!"
end

puts greet("Adam")
puts greet("Johnny")

# def greet(name)
#   name == 'Johnny' ? "Hello, my love!" : "Hello, #{name}!"
# end

describe "Jenny's greeting function" do
  it "should greet some people normally" do
    Test.assert_equals greet("James"), "Hello, James!"
    Test.assert_equals greet("Jane"), "Hello, Jane!"
    Test.assert_equals greet("Jim"), "Hello, Jim!"
  end
  it "should greet Johnny a little bit more special" do
    Test.assert_equals greet("Johnny"), "Hello, my love!"
  end
end
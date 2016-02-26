# =====  Attr Whatevers  =====
# The attr_accessor (et all) define define methods that get/set the instance variables of the same name
class Fruit
  attr_accessor :apple

  def initialize(banana)
    @apple = banana
    self.apple = "#{banana} boat"
  end

  def pear
    @apple
  end
end

#*****
# What will we see on these two lines?
fruit = Fruit.new('orange')
# fruit.pear   # =>
# fruit.apple  # =>

# *****
# We can punch the object in the face and rearrange its guts with metaprogramming
# Here, I go into it and set @apple = 'pineapple'
# What will we see in the following expressions?
fruit.instance_variable_set '@apple', 'pineapple'
# fruit.pear  # =>
# fruit.apple # =>

fruit.apple = 'mango'
# fruit.pear  # =>
# fruit.apple # =>

# =====  Instance Variables  =====
# An instance is a collection of instance variables with a pointer to its class,
# it is like the base of a linked list, pointing at the first node in the list
# (typically named "head")

# What will we see returned from 159?
class Fruit
  def initialize(banana)
    @apple = banana
    @pear  = "#{banana} boat"
  end

  def pear
    @apple
  end
end

fruit = Fruit.new('orange')
# fruit.pear # =>

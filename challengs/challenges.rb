# Predict the result of lines ending in # =>
# then uncomment them and see if you're correct.

# =====  Toplevel methods are defined where?  =====
def rawr!
  "#{self} says: rawr!"
end
public :rawr!

# *****
# What class is rawr! defined in
# method(:rawr!).owner # =>

# *****
# Think of some objects that inherit from this class
# and show you can call it on them
# <your example here>


# =====  What do bindings tell us?  =====

# Here we have a method that returns an object wrapping the binding it executed in
# We can evaluate code within the context of that binding to find out about it
def get_binding
  a = 123
  binding
end
b = get_binding

# *****
# What is self in that binding?
# b.eval 'self' # =>

# *****
# What are its local variables?
# b.eval 'local_variables' # =>

# *****
# What is the value of a?
a = 99
# b.eval 'a' # =>

# *****
# The binding tracks what `self` is, why does this matter?
# What will we see the second time we run this?
b.eval 'instance_variables'
@abc = 123
# b.eval 'instance_variables' # =>


# =====  Calling methods pushes bindings onto the callstack  =====
# We can see the callstack with the `caller` method.
def you_rang?
  # *****
  # How many bindings are on the callstack?
  # caller.size # =>

  # *****
  # Where did we call it from?
  # caller # =>
end
you_rang?

# *****
# What will we see, before and after the calls of each of these lines below?
def call1
  caller.size
  call2
  caller.size
end

def call2
  caller.size
  call3
  caller.size
end

def call3
  caller.size
  "zomg".call4
  caller.size
end

class String
  def call4
    caller.size
  end
end

caller.size
call1
caller.size

# =====  The last line of a method is returned to the caller  =====

# *****
# What will we see returned from call1?
def call1
  call2
  call3
end

def call2
  222
end

def call3
  call4
  333
end

def call4
  444
end

call1


# =====  Arguments are evaluated first  =====
# Each of the expressions below will evaluate its argument first,
# then it will evaluate itself. What will we see on eac line?

def call1(n)
  # n # =>
  1 + n
end

def call2(n)
  # n # =>
  n + 2
end

def call3(n)
  # n # =>
  n + 3
end

# call3(
#   call2(
#     call1(0)  # =>
#   )           # =>
# )             # =>


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


# ===== Classes are a linked list called inheritance  =====
# Get classy, stay super

class A
  def zomg
    'a'
  end
end

class B < A
  def zomg
    'b'
  end
end

class C < B
end

class D < A
end

# *****
# What will we see on each of these lines?
# A.new.zomg # =>
# B.new.zomg # =>
# C.new.zomg # =>
# D.new.zomg # =>

# =====  We can use super to access the definition in the superclass chain  =====
class C1
  def m
    '1'
  end
end

class C2 < C1
  def m
    super + '2'
  end
end

class C3 < C2
  def m
    super + '3'
  end
end

# *****
# What will we see on each of these lines?
# C1.new.m # =>
# C2.new.m # =>
# C3.new.m # =>


# =====  Once again, but with malice  =====
class W
  def zomg() '1' + wtf  end
  def wtf()  '2'        end
  def bbq()  '3'        end
end

class X < W
  def zomg() super      end
  def wtf()  '4' + bbq  end
  def bbq()  super      end
end

class Y < X
  def zomg() '6' + super  end
  def wtf()  '7' + super  end
  def bbq()  '8' + super  end
end

#*****
# W.new.zomg # =>
# X.new.zomg # =>
# Y.new.zomg # =>


# =====  Chaining method calls  =====
# When we call a method, we call it on whatever the expression evaluates to
# This means that chaining methods leads to methods called on the return value of the previous expression

#*****
# What will this expression evaluate to?
# 'abc'.upcase.reverse.downcase.chars.first # =>

#*****
# It doesn't matter if you split the expression across lines, what will we see?
# 'abc'       # =>
#   .upcase   # =>
#   .reverse  # =>
#   .downcase # =>
#   .chars    # =>
#   .first    # =>

#*****
# The dot can go on the preceeding line, or the current line
# 'abc'.      # =>
#   upcase.   # =>
#   reverse.  # =>
#   downcase. # =>
#   chars.    # =>
#   first     # =>

#*****
# We can get all funky with the dot (best practices, ya know?)
# 'abc'.              # =>
#   upcase  .reverse  # =>
#   .downcase.        # =>
#   chars             # =>
# .  first            # =>


# =====  Mixing and matching args and chaining  =====
#*****
# Uncomment each of the following lines, what will we see?
def z(a)
  # a + a # =>
end

def w(a)
  # a         # =>
  #  .reverse # =>
end

# (w (z 'abc').upcase).chars # =>


# =====  Modules  =====
# When you include a module, it makes a class and inserts it into the hierarchy
class A
  def wat
    'a'
  end
end

module WatInTheWorld
  def wat
    '!?' + super
  end
end

class B < A
  include WatInTheWorld
  def wat
    'b' + super
  end
end

#*****
# What will we see here?
# B.new.wat # =>


# =====  Silence!! DEstroy him!!  =====
# Dew! Bew! Dew-dew-dew! Bew!

module InSpace
  attr_reader :current_status
  def initialize(current_status, *whatevz)
    @current_status = current_status
    super(*whatevz)
  end
end

class Human
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

class Student < Human
  include InSpace
  attr_reader :lesson
  def initialize(lesson, *o_O)
    @lesson = lesson
    super *o_O
  end
end

students_in_space = Student.new(
  "The future is quite different to the present",
  "Though one thing we have in common with the present is we still call it the present, even though its the future",
  "What you call 'the present', we call 'the past', so... you guys are way behind"
)

#*****
# We used poisonous gasses, (with traces of lead)
# and we poisoned their asses (actually, their lungs)
# students_in_space.current_status # =>
# students_in_space.name           # =>
# students_in_space.lesson         # =>

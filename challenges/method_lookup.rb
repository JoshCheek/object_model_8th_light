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

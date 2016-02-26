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


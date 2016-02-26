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


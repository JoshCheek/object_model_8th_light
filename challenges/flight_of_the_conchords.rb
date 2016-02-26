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

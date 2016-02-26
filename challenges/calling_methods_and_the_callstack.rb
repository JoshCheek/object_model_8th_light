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

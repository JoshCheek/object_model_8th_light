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


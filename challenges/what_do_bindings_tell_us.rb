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

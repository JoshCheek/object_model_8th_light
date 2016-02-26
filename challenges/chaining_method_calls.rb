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

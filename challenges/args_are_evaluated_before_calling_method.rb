# =====  Arguments are evaluated first  =====
# Each of the expressions below will evaluate its argument first,
# then it will evaluate itself. What will we see on each line?

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

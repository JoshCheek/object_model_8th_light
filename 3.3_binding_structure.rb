BINDINGS
# Purpose: Bind a method to an object

{ self:            some object (3.1),
  local_variables: {
    # keys are symbols of ivar names
    # values are objects (3.1)
  },

  # these
  return_value: some object  (3.1),
  next_binding: some binding (3.1),
  instruction:  address of current place in code,
  env:          some binding (3.3),
}

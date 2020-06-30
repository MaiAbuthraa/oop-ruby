# When you create a Ruby proc, it captures the current execution scope with it.
# This concept, which is sometimes called closure, means that a proc will
# carry with it values like local variables and methods from the context where it was defined.
#
# They don’t carry the actual values, but a reference to them,
# so if the variables change after the proc is created,
# the proc will always have the latest version.


def call_proc(my_proc)
  x = 500
  #puts x
  my_proc.call
end

x = 1
my_proc = Proc.new { puts x}

p call_proc(my_proc)
#This happens because the proc is using the value of count from
#the place where the proc was defined, and that’s outside of the method definition.

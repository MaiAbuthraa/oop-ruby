# A lambda is a way to define a block & its parameters
# You can save this lambda into a variable for later use.

say_something = -> { puts "This is a lambda" }

# Defining a lambda won’t run the code inside it, just like defining
# a method won’t run the method, you need to use the call method for that

#say_something #nothing happen
say_something.call
# There are other ways to call a lambda

say_something.()
say_something.===
say_something[]

# Lambdas can also take arguments

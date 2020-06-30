# There is no dedicated Lambda class. A lambda is just a special Proc object.
# Proc will not raise error for wrong arguments

my_proc = Proc.new { |x,y,z| puts "I'm here! #{x}"}

my_proc.call
my_proc.call('mai')
# Proc does not care about arguments!


###############

# If you run the following code, you will notice how the proc raises a LocalJumpError exception.
# The reason is that you can’t return from the top-level context.

my_lamada = -> { return 1}
puts "this is my lamada #{my_lamada.call}"

my_proc = Proc.new { return 1}
# puts "this is my proc #{my_proc.call}"
# if we run previse line the code will stop there

###############

# If the proc was inside a method, then calling return would be
# equivalent to returning from that method.

def call_proc
  puts "Before proc"
  my_proc = Proc.new { return 2 }
  my_proc.call #like return the value and stop code here
  puts "After proc"
end

puts "call_proc: #{call_proc}"
puts "...."

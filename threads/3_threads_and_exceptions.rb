Thread.abort_on_exception = true
# If an exception happens inside a thread it will die silently without
# stopping your program or showing any kind of error message.

# For debugging purposes, you may want your program to stop when something bad happens.
# To do that you can set the following flag on Thread to true:
# Make sure to set this flag before you create your threads

sleep 2
Thread.new { raise 'hell' }

puts "still working"


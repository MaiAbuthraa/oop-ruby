#### Creating Ruby Threads
# You can create a new Ruby thread by calling Thread.new.
# Make sure to pass in a block with the code this thread needs to be running.

# If you have the following code you will notice that there is no output for a few or all of them
# The problem is that Ruby doesn’t wait for threads to finish.
#

Thread.new { puts "hello from thread, 1" }
Thread.new { puts "hello from thread, 2" }
Thread.new { puts "hello from thread, 3" }
Thread.new { puts "hello from thread, 4" }
Thread.new { puts "hello from thread, 5" }


#You need to call the join method on your thread to fix the code above:
t = Thread.new { puts 10**10 }
t.join

# If you want to create multiple threads you can put them inside an array &
# call join on every thread

threads = []
10.times {
  threads << Thread.new { puts Time.new }
}

threads.each(&:join)

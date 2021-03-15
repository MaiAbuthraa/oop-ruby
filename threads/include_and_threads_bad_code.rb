module One
  def doit
    puts 'one'
  end
end
module Two
  def doit
    puts 'two'
  end
end
class Harness
  def include_it(klass)
    self.class.send(:include, klass)
  end
end
Thread.new do
  h = Harness.new
  h.include_it(One)
  sleep 3
  puts "We are one, really"
  h.doit
end
Thread.new do
  h = Harness.new
  h.include_it(Two)
  puts "We are two"
  h.doit
end
sleep 5

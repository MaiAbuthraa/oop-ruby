# The idea is the implicit conversion methods are meant to be used in implicit contexts
# and the explicit conversions are meant for developers to write inline in much more contexts.
# Let me demonstrate this by example.

# explicit
puts "4".to_i + "5".to_i

# implicit
class Seven
  def to_int
    puts "i'm in to_int without call it explicit"
    7
  end
end

Array.new(Seven.new)
########################################

# Ruby also has a few classes with class methods that will either
# do a implicit conversion or return nil and that method name is
# try_convert

#Array.new("32")
# we will get error :
# no implicit conversion of String into Integer

#Array.try_convert
# calls `to_ary` on the parameter or returns `nil`

#Hash.try_convert
# calls `to_hash` on the parameter or returns `nil`

#String.try_convert
# class `to_str` on the parameter or returns `nil`

########################################

# You can pass an explicit block to another method or save it into a variable to use later.
# Notice the &block parameter
def explicit_block &block
  puts "I'm explicit_block function"

  block.call # like Yield
  block.call # like Yield
end

(0..3).each do |n|
  explicit_block { puts "Hi, this is explicit block call - #{n}"}
end

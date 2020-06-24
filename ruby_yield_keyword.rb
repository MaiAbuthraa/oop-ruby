#When you use the yield keyword, the code inside the block will run & do its work.
#Just like when you call a regular Ruby method.

def do_somthing
  puts 'this is inside do_somthing'
  yield
end

do_somthing do
  puts 'I`m Yield'
end

#Use yield with arguments
def lets_do_this
  x = rand()
  puts "X = #{x}"

  yield x
  yield x
end
########################################

# Every time you call yield, the block will run, so this is like calling the same method again.
#
lets_do_this do |argument_block|
  puts argument_block * 100
end

# OUTPUT
# this is inside do_somthing
# I`m Yield
# X = 0.7342228868856606
# 73.42228868856606
# 73.42228868856606
########################################

# How To Check If A Block Was Given
# You can check if a block has been passed in with the block_given? method.

def do_something_with_block
  return "No block given" unless block_given?
  yield
end

puts " How To Check If A Block Was Given?"
puts do_something_with_block
do_something_with_block { puts 'I`m Yield' }

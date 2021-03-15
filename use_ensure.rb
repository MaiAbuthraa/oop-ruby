def get_chunk(index)
  puts "index: #{index}"
rescue  => e
  raise e
ensure
  sleep 0.001
  puts "ensure #{index}"
end


(0...5000).step(100).each do |index|
  get_chunk(index)
end

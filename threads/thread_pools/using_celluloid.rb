# Let’s say you have hundreds of items to process, starting a thread for
# each of them is going to destroy your system resources.

# pages_to_crawl = %w( index about contact ... )

# pages_to_crawl.each do |page|
#  Thread.new { puts page }
# end

require 'bundler/inline'

gemfile do
  source 'https://rubygems.org'
  gem 'celluloid'
end

class Worker
  include Celluloid
  def process_page(url)
    puts url
  end
end

pages_to_crawl = %w( index about contact products ... )
worker_pool    = Worker.pool(size: 5)

# If you need to collect the return values check out 'futures'
pages_to_crawl.each do |page|
  puts "Page : #{page}"
  worker_pool.process_page(page)
end

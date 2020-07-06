module Example1
  autoload(:Engine, './engine.rb')

  # The first call to autoload? :Engine returns the "./engine.rb" file path.
  # Then the Engine module is loaded via a loading of the engine.rb file.
  puts "The Engine module isn't yet loaded!"
  p autoload?(:Engine)

  Engine

  # The second call to autoload? :Engine returns nil because the Engine module is already loaded.
  puts "The Engine module has been successfully loaded!"
  p autoload?(:Engine)
end

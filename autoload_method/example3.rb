autoload(:Engine, './engine.rb')

module Example3
  # The call to autoload? :Engine within the Example2  namespace returns nil
  # because the :Engine  module is registered as autoload in the top-level namespace
  # and not in the Example2  namespace.
  p autoload? :Engine
  # will print [] , constant list modules if haven’t been loaded yet.
  p constants
end

# the second call to autoload? :Engine is invoked within the top-level namespace.
# As it’s within the same namespace as the autoload(:Engine, './engine.rb')
# registration then it returns the "./engine.rb" file path
p autoload? :Engine

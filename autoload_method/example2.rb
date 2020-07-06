module Example2
  # we can see that the Engine constant exists even if it hasn’t been loaded yet.
  # In effect, a call to autoload will automatically create a constant named as
  # the first argument of the method and flagged as autoload registered.
  # The value of this constant will be undefined and NOT nil.
  autoload(:Engine, './engine.rb')
  p autoload? :Engine
  p constants
end

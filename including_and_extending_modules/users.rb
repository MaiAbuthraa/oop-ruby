#The difference is that including the module makes all the module's methods instance methods whereas extending the module makes all its methods class methods

module Users
  def get_name
    "Mai"
  end
end

## Including modules binds the methods to the object instance
class Person
  include Users
end

## Extending modules binds the methods to the class itself
class Admin
  extend Users
end

#puts Person.get_name
#output NoMethodError: undefined method `get_name' for Person:Class

puts "#{Person.new.get_name}"
#output: Mai

puts "Admin :#{Admin.get_name}"
#output: Mai

puts "Admin :#{Admin.new.get_name}"
#output: NoMethodError: undefined method `get_name

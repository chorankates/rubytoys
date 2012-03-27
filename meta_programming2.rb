#!/usr/bin/env ruby

## meta_programming2.rb -- ok, this time we are using metaprogramming to define getters/setters

class Dog
  attr :bark, true # why is it being defined as a symbol?
end

delta_methods = Dog.instance_methods - Object.instance_methods; # this works in void context, but it complains loudly

dog = Dog.new

dog.bark="Woof!"

puts dog.bark

#puts "delta_methods: " + delta_methods.to_s

exit

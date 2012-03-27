#!/usr/bin/env ruby

## meta_programming1.rb -- not actually meta programming

class Dog    
    # getter
    def bark
        @bark
    end
    
    # setter
    def bark=(val)
        @bark = val
    end
    
end

dog = Dog.new

dog.bark="Woof!"

puts dog.bark

exit

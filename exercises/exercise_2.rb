require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...
# Load the first store (with id = 1) and assign it to @store1
@store1 = Store.find(1)

# Load the second store and assign it to @store2
@store2 = Store.find(2)

# Display the current details of @store1
puts "Current details of @store1:"
puts @store1.inspect

# Update the name of the first store
@store1.update(name: 'Updated Store Name')

# Display the updated details of @store1
puts "Updated details of @store1:"
puts @store1.reload.inspect

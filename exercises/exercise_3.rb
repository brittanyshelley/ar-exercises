require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Your code goes here ...
# Load the third store and assign it to @store3
@store3 = Store.find(3)

# Display the current details of @store3 before deletion
puts "Current details of @store3:"
puts @store3.inspect

# Delete the third store from the database
@store3.destroy

# Verify that the store has been deleted by outputting the count
puts "Number of stores after deletion: #{Store.count}"

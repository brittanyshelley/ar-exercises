require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Create the stores using ActiveRecord's create method
burnaby = Store.create(name: 'Burnaby', annual_revenue: 300000, mens_apparel: true, womens_apparel: true)
richmond = Store.create(name: 'Richmond', annual_revenue: 1260000, mens_apparel: false, womens_apparel: true)
gastown = Store.create(name: 'Gastown', annual_revenue: 190000, mens_apparel: true, womens_apparel: false)

# Output the number of stores
puts "Number of stores: #{Store.count}"
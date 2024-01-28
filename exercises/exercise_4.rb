require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
# Create 3 more stores
surrey = Store.create(name: 'Surrey', annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
whistler = Store.create(name: 'Whistler', annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
yaletown = Store.create(name: 'Yaletown', annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

# Fetch stores that carry men's apparel
@mens_stores = Store.where(mens_apparel: true)

# Output name and annual revenue of each men's store
puts "Men's Stores:"
@mens_stores.each { |store| puts "#{store.name}: Annual Revenue - #{store.annual_revenue}" }

# Fetch stores that carry women's apparel and generate less than $1M in annual revenue
@womens_stores_low_revenue = Store.where(womens_apparel: true).where('annual_revenue < ?', 1000000)

# Output name and annual revenue of each women's store with low revenue
puts "\nWomen's Stores with Annual Revenue < $1M:"
@womens_stores_low_revenue.each { |store| puts "#{store.name}: Annual Revenue - #{store.annual_revenue}" }
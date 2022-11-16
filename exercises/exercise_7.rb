require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

# Validation for both models
# Error message if attempt to create record 
puts "Exercise 7"
puts "----------"

# Your code goes here ...
class Employee
  validates :first_name, :last_name, :store_id, presence: true
  validates :hourly_rate, numericality: { in: 40..200}
end

class Store
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than: 0 }
end

puts "What is the store name?"
print ">"
@store_name = gets.chomp
store = Store.create(name: "#{@store_name}")

puts store.errors.messages
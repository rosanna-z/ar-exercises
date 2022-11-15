require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

# Assign third store to instance variable
# Destroy third store

puts "Exercise 3"
puts "----------"

@store3 = Store.find_by(id: '3')

@store3.destroy

puts Store.count
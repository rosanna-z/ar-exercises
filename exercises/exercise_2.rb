require_relative '../setup'
require_relative './exercise_1'

# Load two particular stores and assign to an instance variable
# Rename store1 to different name
puts "Exercise 2"
puts "----------"

@store1 = Store.find_by(id: '1')

@store2 = Store.find_by(id: '2')

@store1.name = "Burnaby - Metro area"

@store1.save
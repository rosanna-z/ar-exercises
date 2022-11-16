require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

# Create employees
puts "Exercise 6"
puts "----------"

class Store
  has_many :employees
end

class Employee
  belongs_to :store
end

@store1.employees.create(first_name: "Rosanna", last_name: "Zhang", hourly_rate: "70")
@store1.employees.create(first_name: "Jennie", last_name: "Kim", hourly_rate: "55")
@store1.employees.create(first_name: "Jisoo", last_name: "Kim", hourly_rate: "50")
@store2.employees.create(first_name: "Rose", last_name: "Park", hourly_rate: "60")
@store2.employees.create(first_name: "Lisa", last_name: "Manobal", hourly_rate: "65")

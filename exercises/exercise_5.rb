require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

# Total annual rev for all stores
# Avg rev for all stores
# Number of stores generating $1M+ rev

puts "Exercise 5"
puts "----------"


puts Store.sum(:annual_revenue)
puts Store.average(:annual_revenue)

@high_sales_stores = Store.where('annual_revenue < ?', 1000000)

puts @high_sales_stores.count


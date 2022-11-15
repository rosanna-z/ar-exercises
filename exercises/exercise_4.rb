require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

# Assign men's apparel to instance variable and print each one
# Assign women's apparel to instance variable and print ones making less than $1M rev

puts "Exercise 4"
puts "----------"

store = Store.create(name: "Surrey", annual_revenue: "224000", mens_apparel: false, womens_apparel: true)
store = Store.create(name: "Whistler", annual_revenue: "1900000", mens_apparel: true, womens_apparel: false)
store = Store.create(name: "Yaletown", annual_revenue: "430000", mens_apparel: true, womens_apparel: true)

@mens_store = Store.where(mens_apparel: true)

@mens_store.each do |store| 
  puts "Men's Store: #{store.name}, annual revenue: #{store.annual_revenue}"
end

@womens_store = Store.where(womens_apparel: true)

@womens_store.each do |store|
  if store.annual_revenue < 1000000
    puts "Women's Store: #{store.name}"
  end
end
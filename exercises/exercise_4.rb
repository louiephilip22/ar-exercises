require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

@mens_store = Store.where(mens_apparel: true)

puts "Men's store and Annual revenue: "
@mens_store.each { |men_store| puts "Store: #{men_store.name} | Annual revenue: #{men_store.annual_revenue}" }

@womens_store = Store.where(womens_apparel: true).where("annual_revenue < ?", 1000000)

puts "Women's store and with Annual revenue less than $1M: "
@womens_store.each { |women_store| puts "Store: #{women_store.name} | Annual revenue: #{women_store.annual_revenue}" }
require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Philip", last_name: "Louie", hourly_rate: 40)
@store1.employees.create(first_name: "Jose", last_name: "Rizal", hourly_rate: 50)
@store1.employees.create(first_name: "Andres", last_name: "Bonifacio", hourly_rate: 30)
@store1.employees.create(first_name: "Emilio", last_name: "Aguinaldo", hourly_rate: 60)

@store2.employees.create(first_name: "Joseph", last_name: "Estrada", hourly_rate: 45)
@store2.employees.create(first_name: "Ninoy", last_name: "Aquino", hourly_rate: 50)
@store2.employees.create(first_name: "Manny", last_name: "Pacquiao", hourly_rate: 35)
@store2.employees.create(first_name: "Fidel", last_name: "Ramos", hourly_rate: 30)
@store2.employees.create(first_name: "Rodrigo", last_name: "Duterte", hourly_rate: 50)

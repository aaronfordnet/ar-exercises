require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Santo", last_name: "Sargentich", hourly_rate: 75)
@store1.employees.create(first_name: "Monique", last_name: "Du bois", hourly_rate: 25)
@store1.employees.create(first_name: "Macey", last_name: "Alexis", hourly_rate: 42)

@store2.employees.create(first_name: "Joss", last_name: "Mcdaniel", hourly_rate: 60)
@store2.employees.create(first_name: "Wyatt", last_name: "Stuber", hourly_rate: 20)
@store2.employees.create(first_name: "Tracey", last_name: "Hanreddy", hourly_rate: 20)

@all_employees = Employee.all
@all_employees.each do |name|
  puts name.first_name
end
puts "Total number of employees: #{Employee.count}"

require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
total_revenue = Store.sum(:annual_revenue)
average_revenue = total_revenue / Store.count
stores_over_mm = Store.where("annual_revenue > ?", 1000000).count


total_revenue_formatted = total_revenue.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse

average_revenue_formatted = average_revenue.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse

puts "Total annual revenue of all stores: #{total_revenue_formatted}"

puts "Average annual revenue for each store: #{average_revenue_formatted}"

puts "Number of stores generating $1M or more in annual sales: #{stores_over_mm}"

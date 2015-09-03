# http://learnrubythehardway.org/book/ex4.html

cars = 100
car_capacity = 4.0
drivers = 30
passengers = 90
cars_not_driven = (cars - drivers)
cars_driven = drivers
carpool_capacity = (cars_driven * car_capacity)
average_passengers_per_car = (passengers / cars_driven)

puts "There are (#{cars}) cars available."
puts "There are (#{drivers}) drivers available."
puts "There will be (#{cars_not_driven}) empty cars today."
puts "We can carpool (#{carpool_capacity}) people today."
puts "We have (#{passengers}) people to carpool today."
puts "We need to put (#{average_passengers_per_car}) people in each car."

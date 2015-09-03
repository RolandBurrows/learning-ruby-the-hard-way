# http://learnrubythehardway.org/book/ex5.html

my_name = 'Roland N. Burrows'
my_age = 29 # not a lie in 2015
my_height = 77 # inches
my_weight = 280 # lbs
my_eyes = 'Blue'
my_teeth = 'White'
my_hair = 'Red'

puts "Let's talk about (#{my_name})."
puts "He's (#{my_height}) inches tall."
puts "He's (#{my_weight}) pounds heavy."
puts "Actually, that's pretty heavy."
puts "He's got (#{my_eyes}) eyes and (#{my_hair}) hair."
puts "His teeth are usually (#{my_teeth}), depending on the tea."

# This line is tricky - try to get it exactly right.
puts "If I add (#{my_age}), (#{my_height}), and (#{my_weight}), I get (#{my_age + my_height + my_weight})."
puts "Mathematical significance?! None."

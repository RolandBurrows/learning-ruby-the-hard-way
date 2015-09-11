# http://learnrubythehardway.org/book/ex5.html

def convertInchesToCentimeters(num)
  cm = (num * 2.54)
  return cm
end

def convertPoundsToKilograms(num)
  lbs = num
  kilo = (lbs * 0.453592)
  return kilo
end

my_name = 'Roland N. Burrows'
my_age = 29 # not a lie in 2015
my_height = 77 # inches
my_height_metric = convertInchesToCentimeters(my_height)
my_weight = 280 # lbs
my_weight_metric = convertPoundsToKilograms(my_weight)
my_eyes = 'Blue'
my_teeth = 'White'
my_hair = 'Red'

puts "Let's talk about (#{my_name})."
puts "He's (#{my_height}) inches tall."
puts "That's (#{my_height_metric}) centimeters!"
puts "He's (#{my_weight}) pounds heavy."
puts "That's (#{my_weight_metric}) kilograms!"
puts "Actually, that's pretty heavy."
puts "He's got (#{my_eyes}) eyes and (#{my_hair}) hair."
puts "His teeth are usually (#{my_teeth}), depending on the tea he drinks."

# This line is tricky - try to get it exactly right.
puts "If I add (#{my_age}), (#{my_height}), and (#{my_weight}), I get (#{my_age + my_height + my_weight})."
puts "Mathematical significance?! None."

# Study Drills
# 2. Metric converters addded

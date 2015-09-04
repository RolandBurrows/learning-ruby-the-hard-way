# http://learnrubythehardway.org/book/ex6.html

types_of_people = 10
x = "There are (#{types_of_people}) types of people."   # Num inserted into string
binary = "binary"
do_not = "don't"
y = "Those who know (#{binary}), and those who (#{do_not})."   # Two string-ception spots

puts x
puts y

puts "I said: (#{x})."   # String-ception
puts "I also said: '(#{y})'."   # String-ception

hilarious = false
joke_evaluation = "Isn't that joke so funny?! (#{hilarious})."   # Boolean inserted into string

puts joke_evaluation

w = "This is the left side of..."
e = "a string with a right side."

puts (w) + (e)

# Study Drills
# 2. Comments added
# 3. He wasn't lying - the other spots are not strings inside of strings
# 4. 'Adding' strings concatinates them
# 5. In order to nest strings within strings, one must alternate use of the ' and " symbols or the chain will break

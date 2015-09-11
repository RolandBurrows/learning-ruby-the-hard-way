# http://learnrubythehardway.org/book/ex11.html

print "How old are you? "
age = gets.chomp
print "How tall are you? "
height = gets.chomp
print "How much do you weigh? "
weight = gets.chomp

puts "So, you're (#{age}) years old, (#{height}) tall, and (#{weight}) units heavy."

# Study Drills
# 1. 'gets' gets a line of text, including a line break at the end and returns that line of text as a string value.
#    Calling chomp on that value removes the line break.
# 3. See exercise 3, calculator.rb.

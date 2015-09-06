# http://learnrubythehardway.org/book/ex12.html

print "Give me a number: "
number = gets.chomp.to_i

bigger = number * 100
puts "A bigger number is (#{bigger})."

print "Give me another number: "
another = gets.chomp
number = another.to_f

smaller = number / 100
puts "A smaller number is (#{smaller})."

# Study Drills
# 1. 'to_f' converts to a floating point number

print "Show me what you got: "
full_cost = gets.chomp.to_f
puts "That was too much. Here's 10% back:"
puts "   90% kept: (#{full_cost * 0.90})"
puts "   10% kept: (#{full_cost * 0.10})"

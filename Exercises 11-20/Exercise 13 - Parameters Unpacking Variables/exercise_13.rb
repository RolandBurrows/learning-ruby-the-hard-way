# http://learnrubythehardway.org/book/ex13.html

one, two, three = ARGV

puts "Your first variable is: #{one}"
puts "Your second variable is: #{two}"
puts "Your third variable is: #{three}"

# Study Drills
# 1. Lines print nothing in the variable spot.
# 3. Combine gets.chomp with ARGV to make a script that gets more input from a user:

puts "Now, let's play a game. Which one is missing?"
puts "List: #{one}, #{three}"
input = STDIN.gets.chomp
puts "#{input}?"
puts "The answer is: #{two}"
if input.eql?(two)
  puts "You win!"
else
  puts "You get nothing! you lose! Good day, sir!"
end

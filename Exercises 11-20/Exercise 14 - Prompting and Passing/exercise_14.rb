# http://learnrubythehardway.org/book/ex14.html

first_name = ARGV.first
last_name = ARGV[1]
primpt = '>> '

puts "Hi, #{first_name} #{last_name}!"
puts "I'd like to ask you a couple of questions, and I need them answered immediately."
puts "Do you 'like me' like me, #{first_name}? ", primpt
likes = $stdin.gets.chomp

puts "Where do you live, #{first_name}? ", primpt
lives = $stdin.gets.chomp

puts "What kind of computer do you have? ", primpt
computer = $stdin.gets.chomp

puts """
Alright, so you said '#{likes}' about liking me.
You live in #{lives}.  Not sure where that is.
And you have a #{computer} computer.  Nice.
"""

# Study Drills
# 2. prompt => primpt
# 3. added last_name

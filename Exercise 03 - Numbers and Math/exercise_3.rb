# http://learnrubythehardway.org/book/ex3.html

puts ""
puts "I will now count my chickens:"
puts "Hens = #{25+30/6}"                    # prints 30
puts "Roosters = #{100-25*3%4}"             # prints 97
puts ""
puts "Now I will count the eggs:"
puts 3 + 2 + 1 - 5 + 4 % 2 - 1 / 4 + 6      # prints 7
puts ""
puts "Is it true that 3 + 2 < 5 - 7?"
puts 3 + 2 < 5 - 7						    # returns false
puts ""
puts "What is 3 + 2? #{3 + 2}."			    # prints 5
puts "What is 5 - 7? #{5 - 7}."		        # prints -2
puts ""
puts "Oh, that's why it's false."
puts "How about some more."
puts ""
puts "Is it greater? #{5 > -2}"				# prints true
puts "Is it greater or equal? #{5 >= -2}"	# prints true
puts "Is it less or equal? #{5 <= -2}"		# prints false
puts ""

# Study Drills
# 3. See calculator.rb
# 4 and 5. See below:
puts "I will now count my chickens:"
puts "Hens = #{25.0+30.0/6.0}"                             # prints 30.0
puts "Roosters = #{100.0-25.0*3.0%4.0}"                    # prints 97.0
puts ""
puts "Now I will count the eggs:"
puts 3.0 + 2.0 + 1.0 - 5.0 + 4.0 % 2.0 - 1.0 / 4.0 + 6.0   # prints 6.75
puts ""
puts "Is it true that 3 + 2 < 5 - 7?"
puts 3.0 + 2.0 < 5.0 - 7.0						           # returns false
puts ""
puts "What is 3 + 2? #{3.0 + 2.0}."			               # prints 5.0
puts "What is 5 - 7? #{5.0 - 7.0}."		                   # prints -2.0
puts ""
puts "Oh, that's why it's false."
puts "How about some more."
puts ""
puts "Is it greater? #{5.0> -2.0}"				           # prints true
puts "Is it greater or equal? #{5.0 >= -2.0}"	           # prints true
puts "Is it less or equal? #{5.0 <= -2.0}"		           # prints false
puts ""

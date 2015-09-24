# http://learnrubythehardway.org/book/ex30.html

people = rand(20)
cars = rand(40)
trucks = rand(15)

puts "What should we do?"

if cars > people
  puts "We should take the cars."
elsif cars < people
  puts "We should NOT take the cars."
else
  puts "We can't decide..."
end

if trucks > cars
  puts "That's too many trucks."
elsif trucks < cars
  puts "Maybe we could take the trucks?"
else
  puts "We still can't decide..."
end

if people > trucks
  puts "Alright, let's just take the trucks."
else
  puts "Bleh, let's stay home."
end

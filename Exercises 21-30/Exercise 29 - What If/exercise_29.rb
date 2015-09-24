# http://learnrubythehardway.org/book/ex29.html

people = rand(20)
cats = rand(30)
dogs = rand(15)


if people < cats
  puts "Too many cats! The world is doomed."
end

if people > cats
  puts "Not many cats. The world is saved!"
end

if people < dogs
  puts "The world is drooled on!"
end

if people > dogs
  puts "The world is dry."
end

if people >= dogs
  puts "People are greater than or equal to dogs."
end

if people <= dogs
  puts "People are less than or equal to dogs."
end

if people == dogs
  puts "People and dogs are true equals."
end

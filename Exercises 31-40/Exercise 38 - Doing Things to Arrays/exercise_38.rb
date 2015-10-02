# http://learnrubythehardway.org/book/ex38.html

ten_things = "Apples Oranges Crows Telephone Light Sugar"
puts ten_things
puts "Wait, there are not 10 things in that list. Let's fix that."

stuff = ten_things.split(' ')
more_stuff = ["Day", "Night", "Song", "Frisbee", "Corn", "Banana", "Girl", "Boy"]

puts more_stuff

while stuff.length != 10
  next_one = more_stuff.pop
  puts "Adding: #{next_one}"
  stuff.push(next_one)
  puts "There are #{stuff.length} items now."
end

puts "There we go: (#{stuff})."

puts "Let's do some things with stuff."

puts stuff[1]
puts stuff[-1]
puts stuff.pop()
puts stuff.join(' ')
puts stuff[3..5].join("#")

# Study Drills
# 4. Ruby Class:


# Class

# Classes in Ruby are first-class objects---each is an instance of class Class.

# Typically, you create a new class by using:

class Name
 # some code describing the class behavior
end

# When a new class is created, an object of type Class is initialized and assigned to a global constant (Name in this case).

# When Name.new is called to create a new object, the new method in Class is run by default.
# This can be demonstrated by overriding new in Class:

class Class
  alias old_new new
  def new(*args)
    print "Creating a new ", self.name, "\n"
    old_new(*args)
  end
end

class Name
end

# Classes, modules, and objects are interrelated.

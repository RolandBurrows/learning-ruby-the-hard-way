# http://learnrubythehardway.org/book/ex20.html

input_file = ARGV.first

def print_all(f)
  puts f.read
end

def rewind(f)
  f.seek(0)
end

def print_a_line(line_count, f)
  puts "#{line_count} - #{f.gets.chomp}"
end

current_file = open(input_file)

puts "First, let's print the whole file:\n"

print_all(current_file)

puts "Now let's rewind - kind of like a tape."

rewind(current_file)

puts "Let's print three lines:"

current_line = 1
print_a_line(current_line, current_file)

current_line = current_line += 1
print_a_line(current_line, current_file)

current_line = current_line += 1
print_a_line(current_line, current_file)

# Study Drills
# 4. 'seek' - the method literally 'seeks', i.e. "goes to", "attempts to find", a given position (as an integer) in a stream.
# 5. '+=' is the "add AND assignment operator". It adds right operand to the left operand and assign the result to left operand.

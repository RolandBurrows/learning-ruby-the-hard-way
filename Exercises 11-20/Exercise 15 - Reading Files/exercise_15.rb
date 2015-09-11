# http://learnrubythehardway.org/book/ex15.html

filename = ARGV.first

txt = open(filename)

puts "> Here's your file (#{filename})'s contents:"
puts txt.read

puts "> Type the filename again, please: "
file_again = $stdin.gets.chomp

txt_again = open(file_again)

puts txt_again.read

txt.close
txt_again.close

# Study Drills
# 7. File.close added

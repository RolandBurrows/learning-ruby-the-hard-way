# http://learnrubythehardway.org/book/ex3.html

# Study Drill #3

puts ""
puts "Input the first num you wish to calculate against."
@response = gets.chomp   # The 'gets' method returns the user's input, and the 'chomp' removes the newline 
puts "Initializing calculations, starting with (#{@response})."
puts ""
puts "Perform next operation. Ex: '+2'. Use '=' to finalize calculation."
@response = gets.chomp

# http://learnrubythehardway.org/book/ex3.html

# Study Drill #3

puts "|"
puts "|  Input the first num you wish to calculate against."
@response1 = gets.chomp.to_f   # The 'gets' method returns the user's input, the 'chomp' removes the newline, and to_f converts to float number
puts "|  Initializing calculations with (#{@response1})."
puts "|"
@total = @response1
@response2 = nil
@result = nil

puts "|  Perform next operation. Ex: '+2'. Use '=' to finalize calculation."
@response2 = gets.chomp
until @response2 == "=" do
	# puts @response2   # Diagnostic
	@operator = @response2[/^./].to_sym   # Extracts the first character from the string with the regex '^.'
	# puts @operator   # Diagnostic
	@operand = @response2[/(?<=^.{1}).*/].to_f
	# puts @operand   # Diagnostic
	@result = @total.send(@operator, @operand)   # Mathematically operates the operand on the response
	# puts @result   #Diagnostic
	puts "|"
	puts "|  (#{@total}) #{@operator} (#{@operand}) = (#{@result})"
	@total = @result
	puts "|"
	puts "|  Perform next operation. Ex: '+2'. Use '=' to finalize calculation."
	@response2 = gets.chomp
end

puts "|  Final value = (#{@total})"

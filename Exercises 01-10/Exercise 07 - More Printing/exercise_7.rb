# http://learnrubythehardway.org/book/ex7.html

puts "Mary had a little lamb."
puts "Its fleece was white as (#{'snow'})."
puts "And everywhere that Mary went..."
puts "." * 10   # What'd that do?  Answer: puts'd 10 periods back to back on the same line

thing1 = "C"
thing2 = "h"
thing3 = "e"
thing4 = "e"
thing5 = "s"
thing6 = "e"
thing7 = "b"
thing8 = "u"
thing9 = "r"
thing10 = "g"
thing11 = "e"
thing12 = "r"

# Watch that print vs. puts on this line. What's it do?  Answer: 'print' does not generate a newline
print thing1 + thing2 + thing3 + thing4 + thing5 + thing6
puts thing7 + thing8 + thing9 + thing10 + thing11 + thing12
# Changing the above to a 'print' will generate the next prompt on the same line.

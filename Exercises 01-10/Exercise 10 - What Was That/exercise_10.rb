# http://learnrubythehardway.org/book/ex10.html

tabby_cat = "\tI'm tabbed in!"
persian_cat = "I'm split\non two lines."
backslash_cat = "I'm \\ a \\ Cat?"

fat_cat = """
I'll do a list:
\t* Cat food
\t* Treats
\t* Catnip\n\t* CatGrass
"""

puts tabby_cat
puts persian_cat
puts backslash_cat
puts fat_cat

puts "Escaped characters:"
puts "Escaped backslash: (\\)."
puts 'Escaped single quote: (\').'
puts "Escaped double quote: (\")."
puts "Escaped ASCII bell: (\a)."
puts "Escaped ASCII backspace: (\b)."
puts "Escaped ASCII formfeed: (\f)."
puts "Escaped ASCII linefeed: (\n)."
puts "Escaped Carriage Return: (\r ASCII)."
puts "Escaped Horizontal Tab: (\t ASCII)."
puts "Escaped Character with 16-bit hex value ffff (Unicode only): (\uffff)."
puts "Escaped ASCII vertical tab (VT): (\v)."
puts "Escaped Character with octal value ooo: (\ooo)."
puts "Escaped Character with hex value hh: (\xff)."

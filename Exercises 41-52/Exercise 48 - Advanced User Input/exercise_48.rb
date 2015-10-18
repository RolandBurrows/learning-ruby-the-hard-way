# http://learnrubythehardway.org/book/ex48.html

# Intro:
# In past games you handled the user's input by simply expecting set strings. If the user typed
# "run", and excatly "run", then the game worked.

# Me: This had previously occurred to me.


require './scanner_app/data/lexicon'

stuff = $stdin.gets.chomp

puts Lexicon.new.scan(stuff)

# TODO: account for case insensitivity

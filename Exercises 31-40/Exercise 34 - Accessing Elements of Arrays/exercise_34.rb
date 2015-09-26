# http://learnrubythehardway.org/book/ex34.html

animals = ['bear', 'ruby', 'peacock', 'kangaroo', 'whale', 'platypus']

# The animal at 1.          # ruby
# The third (3rd) animal.   # peacock
# The first (1st) animal.   # bear
# The animal at 3.          # kangaroo
# The fifth (5th) animal.   # whale
# The animal at 2.          # peacock
# The sixth (6th) animal.   # platypus
# The animal at 4.          # whale

puts ("ruby" == animals[1])
puts ("peacock" == animals[2])
puts ("bear" == animals[0])
puts ("kangaroo" == animals[3])
puts ("whale" == animals[4])
puts ("peacock" == animals[2])
puts ("platypus" == animals[5])
puts ("whale" == animals[4])

# 100% correct, woo!

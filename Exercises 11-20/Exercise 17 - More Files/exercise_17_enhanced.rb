# http://learnrubythehardway.org/book/ex17.html

from_file, to_file = ARGV

puts "Copying from (#{from_file}) to (#{to_file})..."

# We could do these two on one line, how?
in_file = open(from_file)
indata = in_file.read
# indata = open(from_file).read , but that would cause an issue later when we close the file

out_file = open(to_file, 'w')
out_file.write(indata)

out_file.close
in_file.close

puts "Done!"

# Study Drills
# 1. Annoying features removed.
# 2. One line version:
#    open(ARGV[1], 'w').write(open(ARGV[0]).read)

# http://learnrubythehardway.org/book/ex18.html

# This one is like your scripts with ARGV:
def print_two_args(*args)
  arg1, arg2 = args
  puts "arg1: (#{arg1}), arg2: (#{arg2})"
end

# OK, that *args is actually pointless, we can just do this:
def print_two_args_again(arg1, arg2)
  puts "arg1: (#{arg1}), arg2: (#{arg2})"
end

# This just takes one argument:
def print_one_arg(arg1)
  puts "arg1: (#{arg1})"
end

# This one takes no arguments:
def print_no_args()
  puts "I got nothin'."
end

print_two_args("Zed","Shaw")
print_two_args_again("Zed","Shaw")
print_one_arg("First!")
print_no_args()

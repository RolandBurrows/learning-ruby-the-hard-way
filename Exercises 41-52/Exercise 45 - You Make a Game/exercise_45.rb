# http://learnrubythehardway.org/book/ex45.html

# No time to implement now.
# TODO: Actually make a neat little game. Maybe part of a dev contest?


# Function Style

# All the other rules I've taught you about how to make a function nice apply here,
# but add these things:

# For various reasons, programmers call functions that are part of classes "methods".
# It's mostly marketing but just be warned that every time you say "function" they'll annoyingly
# correct you and say "method." If they get too annoying, just ask them to demonstrate the
# mathematical basis that determines how a "method" is different from a "function" and they'll
# shut up.

# When you work with classes much of your time is spent talking about making the class "do things."
# Instead of naming your functions after what the function does, instead name it as if it's a
# command you are giving to the class. Same as pop is saying "Hey array, pop this off." It isn't
# called remove_from_end_of_list because even though that's what it does, that's not a command to
# an array.

# Keep your functions small and simple. For some reason when people start learning about classes
# they forget this.


# Class Style

# Your class should use "camel case" like SuperGoldFactory rather than super_gold_factory.
# Try not to do too much in your initialize functions. It makes them harder to use.
# Your other functions should use "underscore format" so write my_awesome_hair and not
# myawesomehair or MyAwesomeHair.

# Be consistent in how you organize your function arguments. If your class has to deal with users,
# dogs, and cats, keep that order throughout unless it really doesn't make sense. If you have one
# function that takes (dog, cat, user) and the other takes (user, cat, dog), it'll be hard to use.
# Try not to use variables that come from the module or globals. They should be fairly self
# contained.

# A foolish consistency is the hobgoblin of little minds. Consistency is good, but foolishly
# following some idiotic mantra because everyone else does is bad style. Think for yourself.


# Code Style

# Give your code vertical space so people can read it. You will find some very bad programmers who
# are able to write reasonable code but who do not add any spaces. This is bad style in any
# language because the human eye and brain use space and vertical alignment to scan and separate
# visual elements. Not having space is the same as giving your code an awesome camouflage paint
# job.

# If you can't read it out loud, it's probably hard to read. If you are having a problem making
# something easy to use, try reading it out loud. Not only does this force you to slow down and
# really read it, but it also helps you find difficult passages and things to change for
# readability.

# Try to do what other people are doing in Ruby until you find your own style.

# Once you find your own style, do not be a jerk about it. Working with other people's code is part
# of being a programmer, and other people have really bad taste. Trust me, you will probably have
# really bad taste too and not even realize it.

# If you find someone who writes code in a style you like, try writing something that mimics that
# style.


# Good Comments

# Programmers will tell you that your code should be readable enough that you do not need comments.
# They'll then tell you in their most official sounding voice, "Ergo one should never write
# comments or documentation. QED." Those programmers are either consultants who get paid more if
# other people can't use their code, or incompetents who tend to never work with other people.
# Ignore them and write comments.

# When you write comments, describe why you are doing what you are doing. The code already says
# how, but why you did things the way you did is more important.

# When you write doc comments for your functions, make the comments documentation for someone who
# will have to use your code. You do not have to go crazy, but a nice little sentence about what
#   someone can do with that function helps a lot.

# While comments are good, too many are bad, and you have to maintain them. Keep your comments
# relatively short and to the point, and if you change a function, review the comment to make
# sure it's still correct.

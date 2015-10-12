# http://learnrubythehardway.org/book/ex44.html

# What is Inheritance?
# Inheritance is used to indicate that one class will get most or all of its featuresfrom a parent
# class. This happens implicitly whenever you write class Foo(Bar), which says "Make a class Foo that
# inherits from Bar." When you do this, the language makes any action that you do on instances of Foo
# also work as if they were done to an instance of Bar. Doing this lets you put common functionality
# in the Bar class, then specialize that functionality in the Foo class as needed.

# When you are doing this kind of specialization, there are three ways that the parent and child
# classes can interact:

# 1. Actions on the child imply an action on the parent.
# 2. Actions on the child override the action on the parent.
# 3. Actions on the child alter the action on the parent.


# Composition

# Inheritance is useful, but another way to do the exact same thing is just to use other classes
# and modules, rather than rely on implicit inheritance. If you look at the three ways to exploit
# inheritance, two of the three involve writing new code to replace or alter functionality. This
# can easily be replicated by just calling functions in a module.


# When to Use Inheritance or Composition

# The question of "inheritance versus composition" comes down to an attempt to solve the problem
# of reusable code. You don't want to have duplicated code all over your software, since that's
# not clean and efficient. Inheritance solves this problem by creating a mechanism for you to have
# implied features in base classes. Composition solves this by giving you modules and the ability
# to call functions in other classes.

# If both solutions solve the problem of reuse, then which one is appropriate in which situations?
# The answer is incredibly subjective, but I'll give you my three guidelines for when to do which:

# 1. Avoid something called "meta-programming" at all costs, as it is too complex to be useful
# reliably. If you're stuck with it, then be prepared to know the class hierarchy and spend time
# determining where everything is coming from.
# 2. Use composition to package up code into modules that are used in many different unrelated places
# and situations.
# 3. Use inheritance only when there are clearly related reusable pieces of code that fit under a
# single common concept or if you have to because of something you're using.
# Do not be a slave to these rules. The thing to remember about object-oriented programming
# is that it is entirely a social convention programmers have created to package and share code.
# Because it's a social convention, but one that's codified in Ruby, you may be forced to avoid
# these rules because of the people you work with. In that case, find out how they use things and
# then just adapt to the situation.


# Study Drills
# https://github.com/bbatsov/ruby-style-guide

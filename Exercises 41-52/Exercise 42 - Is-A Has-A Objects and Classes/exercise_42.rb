# http://learnrubythehardway.org/book/ex42.html

## Animal is-a object
class Animal
end

## Dog is-a Animal
class Dog < Animal

  def initialize(name)
    ## Dog has-a name
    @name = name
  end
end

## Cat is-a Animal
class Cat < Animal

  def initialize(name)
    ## Cat has-a name
    @name = name
  end
end

## Person is-a object
class Person

  def initialize(name)
    ## Person has-a name
    @name = name

    ## Person has-a pet of some kind
    @pet = nil
  end

  attr_accessor :pet
end

## Employee is-a person
class Employee < Person

  def initialize(name, salary)
    ## Employee has-a name from Person
    super(name)
    ## Employee has-a salary
    @salary = salary
  end

end

## Fish is-a object
class Fish
end

## Salmon is-a Fish
class Salmon < Fish
end

## Halibut is-a Fish
class Halibut < Fish
end


## rover is-a Dog
rover = Dog.new("Rover")

## satan is-a Cat
satan = Cat.new("Satan")

## mary is-a Person
mary = Person.new("Mary")

## mary has-a pet that has-a name of 'satan'
mary.pet = satan

## frank is-a Employee (which is-a person) that has-a name of 'frank' and has-a salary of '120,000'
frank = Employee.new("Frank", 120000)

## frank has-a pet that has-a name of 'rover'
frank.pet = rover

## flipper is-a fish
flipper = Fish.new()

## course is-a salmon
crouse = Salmon.new()

## harry is-a halibut
harry = Halibut.new()

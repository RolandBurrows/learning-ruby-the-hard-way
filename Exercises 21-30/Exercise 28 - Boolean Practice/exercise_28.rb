# http://learnrubythehardway.org/book/ex28.html

# true  # true && true
# false # false && true
# false # 1 == 1 && 2 == 1
# true  # "test" == "test"
# true  # 1 == 1 || 2 != 1
# true  # true && 1 == 1
# false # false && 0 != 0
# true  # true || 1 == 1
# false # "test" == "testing"
# false # 1 != 0 && 2 == 1
# true  # "test" != "testing"
# false # "test" == 1
# true  # !(true && false)
# false # !(1 == 1 && 0 != 1)
# false # !(10 == 1 || 1000 == 1000)
# false # !(1 != 10 || 3 == 4)
# true  # !("testing" == "testing" && "Zed" == "Cool Guy")
# true  # 1 == 1 && (!("testing" == 1 || 1 == 0))
# false # "chunky" == "bacon" && (!(3 == 4 || 3 == 3))
# false # 3 == 3 && (!("testing" == "testing" || "Ruby" == "Fun"))

puts true == (true && true)
puts false == (false && true)
puts false == (1 == 1 && 2 == 1)
puts true == ("test" == "test")
puts true == (1 == 1 || 2 != 1)
puts true == (true && 1 == 1)
puts false == (false && 0 != 0)
puts true == (true || 1 == 1)
puts false == ("test" == "testing")
puts false == (1 != 0 && 2 == 1)
puts true == ("test" != "testing")
puts false == ("test" == 1)
puts true == (!(true && false))
puts false == (!(1 == 1 && 0 != 1))
puts false == (!(10 == 1 || 1000 == 1000))
puts false == (!(1 != 10 || 3 == 4))
puts true == (!("testing" == "testing" && "Zed" == "Cool Guy"))
puts true == (1 == 1 && (!("testing" == 1 || 1 == 0)))
puts false == ("chunky" == "bacon" && (!(3 == 4 || 3 == 3)))
puts false == (3 == 3 && (!("testing" == "testing" || "Ruby" == "Fun")))

# 100%. Booyah!

# Study Drills
# 3. Comparison Operators
#    ==  true if operands are equal
#    !=  true if operands are not equal
#    >   true if left operand is greater than right
#    <   true if right operand is greater than left
#    >=  true if left operand is greater or equal to right
#    <=  true if right operand is greater or equal to left
#   <=>  Returns: 0 if first operand equals second
#                 1 if first operand is greater than the second
#                 -1 if first operand is less than the second.
#   ===  true if equality is within a when clause of a case statement

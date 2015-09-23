# http://learnrubythehardway.org/book/ex27.html

### The Truth Terms ###

# && (and)
# || (or)
# ! (not)
# != (not equal)
# == (equal)
# >= (greater-than-equal)
# <= (less-than-equal)
# true
# false


### The Truth Tables ###

# NOT                     TRUE?
# !false                  true
# !true                   false

# OR (||)                 TRUE?
# true || false           true
# true || true            true
# false || true           true
# false || false          false

# AND (&&)                TRUE?
# true && false           false
# true && true            true
# false && true           false
# false && false          false

# NOT OR                  TRUE?
# not (true || false)     false
# not (true || true)      false
# not (false || true)     false
# not (false || false)    true

# NOT AND                 TRUE?
# !(true && false)        true
# !(true && true)         false
# !(false && true)        true
# !(false && false)       true

# !=                      TRUE?
# 1 != 0                  true
# 1 != 1                  false
# 0 != 1                  true
# 0 != 0                  false

# ==                      TRUE?
# 1 == 0                  false
# 1 == 1                  true
# 0 == 1                  false
# 0 == 0                  true

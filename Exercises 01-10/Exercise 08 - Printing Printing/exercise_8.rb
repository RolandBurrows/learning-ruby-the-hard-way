# http://learnrubythehardway.org/book/ex8.html

formatter = "%{first} %{second} %{third} %{fourth}"

puts formatter % {first: 1, second: 2, third: 3, fourth: 4}
puts formatter % {first: "One", second: "Two", third: "Three", fourth: "Four"}
puts formatter % {first: true, second: false, third: false, fourth: true}
puts formatter % {first: formatter, second: formatter, third: formatter, fourth: formatter}

puts formatter % {
  first: "I had this thing,",
  second: "that you could type up right,",
  third: "but it didn't sing,",
  fourth: "so I said goodnight."
}

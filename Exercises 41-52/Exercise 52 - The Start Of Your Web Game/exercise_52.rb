# http://learnrubythehardway.org/book/ex52.html

# "This exercise will be huge, and I predict you could spend anywhere from a week to months on it before moving on."
# --> Aint nobody got time for that!


### Notes and Research:


# Sessions and Tracking Users

# At a certain point in your web application you'll need to keep track of some information and
# associate it with the user's browser. The web (because of HTTP) is what we like to call
# "stateless," which means each request you make is independent of any other requests being made.
# If you request page A, put in some data, and click a link to page B, all the data you sent to page
# A just disappears.

# The solution to this is to create a little data store (usually in a database or on the disk) that
# uses a number unique to each browser to keep track of what that browser was doing. This is called
# "session tracking" uses cookies in the browser to maintain the state of the user through the
# application.

# http://learnrubythehardway.org/book/ex50.html

### Reference Notes:

# Here's what's happening when your browser hits your application:

# 1. Your browser makes a network connection to your own computer, which is called localhost and is
# a standard way of saying "whatever my own computer is called on the network."
# It also uses port 8080.

# 2. Once it connects, it makes an HTTP request to the bin/app.rb application and asks for
# the / URL, which is commonly the first URL on any website.

# 3. Inside bin/app.rb you've got a list of URLs and what classes they match. The only one we
# have is the '/', 'index' mapping. This means that whenever someone goes to / with a browser,
# Sinatra will find the class index and load it to handle the request.

# 4. Now that Sinatra has found class index it calls the index.GET method on an instance of that
# class to actually handle the request. This function runs and simply returns a string for what
# Sinatra should send to the browser.

# 5. Finally, Sinatra has handled the request and sends this response to the browser, which is what
# you are seeing.


### Study Drills

# 3. Skimmed: https://en.wikipedia.org/wiki/HTML5
#             https://en.wikipedia.org/wiki/Cascading_Style_Sheets

# 4. Hwowdy! implemented

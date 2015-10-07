# http://learnrubythehardway.org/book/ex40.html

class Song

  def initialize(lyrics)
    @lyrics = lyrics
  end

  def sing_me_a_song()
    puts ""
    @lyrics.each {|line| puts line }
    puts ""
  end
end

happy_birthday = Song.new(["Happy birthday to you!",
           "I don't want to get sued...",
           "So I'll stop right there."])

bulls_on_parade = Song.new(["They rally around the family.",
            "With pockets full of shells."])

happy_birthday.sing_me_a_song()

bulls_on_parade.sing_me_a_song()

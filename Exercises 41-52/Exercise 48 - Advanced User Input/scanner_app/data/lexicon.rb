class Lexicon

  def scan(werds)

    words = werds.split

    @pairings = []

    words.each do |word|
      if ["east", "north", "south", "west"].include? word
        @pairings.push(['direction', word])
      end
    end

    @pairings

  end 

end


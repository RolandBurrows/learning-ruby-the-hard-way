class Lexicon

  @@lexi_dict = {
    back: "direction",
    east: "direction",
    down: "direction",
    left: "direction",
    north: "direction",
    south: "direction",
    right: "direction",
    up: "direction",
    west: "direction",
    go: "verb",
    stop: "verb",
    kill: "verb",
    eat: "verb"
  }

  def scan(werds)

    words = werds.split

    @result = []

    words.each do |word|
      key = word.to_sym
      if @@lexi_dict.has_key?(key)
        @result.push([@@lexi_dict[key], word])
      end
    end

    return @result

  end 

end


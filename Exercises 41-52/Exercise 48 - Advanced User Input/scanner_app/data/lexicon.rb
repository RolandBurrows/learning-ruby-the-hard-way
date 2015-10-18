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
    eat: "verb",
    the: "stop",
    in: "stop",
    of: "stop",
    from: "stop",
    at: "stop",
    it: "stop",
    bear: "noun",
    cabinet: "noun",
    door: "noun",
    princess: "noun"
  }

  def scan(werds)

    words = werds.split

    @result = []

    words.each do |word|
      key = word.to_sym
      number = word.to_i
      if @@lexi_dict.has_key?(key)
        @result.push([@@lexi_dict[key], word])
      elsif number.is_a? Integer
        @result.push(["number", number])
      end
    end

    return @result

  end 

end


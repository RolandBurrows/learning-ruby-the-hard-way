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

  def number_or_nil(string)
    Integer(string || '')
  rescue ArgumentError
    nil
  end

  def scan(werds)

    words = werds.split

    @result = []

    words.each do |word|
      key = word.to_sym

      num = number_or_nil(word)

      if @@lexi_dict.has_key?(key)
        @result.push([@@lexi_dict[key], word])
      elsif num.is_a? Integer
        @result.push(["number", num])
      else
        @result.push(["error", word])
      end

    end

    @result

  end 

end


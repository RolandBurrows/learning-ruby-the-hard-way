require './lib/parser.rb'
require "test/unit"

class TestParser < Test::Unit::TestCase
	
  @@werd_list = [['noun', 'bear'],
                 ['verb', 'eat'],
                 ['stop', 'the'],
                 ['noun', 'honey']]

  def test_peek()
  	criteria = "stop"
  	result = peek(@@werd_list)
		assert_equal(criteria, result)

    criteria = nil
    result = peek(nil)
    assert_equal(criteria, result)
  end

  def test_match()
    criteria = ["noun", "bear"]
    result = match(@@werd_list, "noun")
    assert_equal(criteria, result)

    criteria = nil
    result = match(@@werd_list, "monkey")
    assert_equal(criteria, result)

    criteria = nil
    result = match(nil, nil)
    assert_equal(criteria, result)
  end

  # def test_skip()
  #   assert_equal("", nil)
  # end

end

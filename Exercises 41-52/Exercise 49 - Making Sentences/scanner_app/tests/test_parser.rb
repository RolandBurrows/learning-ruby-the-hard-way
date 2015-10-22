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

  # TODO: Fix the issue where the following test is skipped, because the method is called 'skip'
  def test_skip()
    criteria = "bear"
    result = skip(@@werd_list, "noun")
    assert_equal(criteria, result)

    criteria = "eat"
    result = skip(@@werd_list, "verb")
    assert_equal(criteria, result)

    criteria = "the"
    result = skip(@@werd_list, "stop")
    assert_equal(criteria, result)
  end

end

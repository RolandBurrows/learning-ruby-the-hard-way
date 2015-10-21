require './lib/parser.rb'
require "test/unit"

class TestParser < Test::Unit::TestCase
	
  @@werd_list = "bear eat the honey"

  def test_peek()
  	criteria = "bear"
  	result = peek(@@werd_list)
		assert_equal(criteria, result)

    criteria = nil
    result = peek(nil)
    assert_equal(criteria, result)
  end

  def test_match()
    criteria = "bear"
    result = match(@@werd_list, "bear")
    assert_equal(criteria, result)

    criteria = nil
    result = match(@@werd_list, "monkey")
    assert_equal(criteria, result)

    criteria = nil
    result = match(nil, nil)
    assert_equal(criteria, result)
  end

  def test_skip()
    assert_equal("", nil)
  end

end

require './lib/parser.rb'
require "test/unit"

class TestParser < Test::Unit::TestCase
	
  @@werd_list = "bear eat the honey"

  def test_peek()
  	criteria = "bear"
  	result = peek(@@werd_list)
		assert_equal(criteria, result)

  end

end

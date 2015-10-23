require './lib/parser.rb'
require "test/unit"

class TestParser < Test::Unit::TestCase
	
  @@werd_list = [['noun', 'bear'], ['verb', 'eat'], ['stop', 'the'], ['noun', 'honey']]

  def test_peek()
    test_list = @@werd_list.dup
  	criteria = "noun"
  	result = peek(test_list)
		assert_equal(criteria, result)

    criteria = nil
    result = peek(nil)
    assert_equal(criteria, result)
  end

  def test_match()
    test_list = @@werd_list.dup
    criteria = ["noun", "bear"]
    result = match(test_list, "noun")
    assert_equal(criteria, result)

    test_list = @@werd_list.dup
    criteria = nil
    result = match(test_list, "adjective")
    assert_equal(criteria, result)

    criteria = nil
    result = match(nil, nil)
    assert_equal(criteria, result)
  end

  # Warning: Run on windows PowerShell and/or Ruby 2.0.0 will
  #          cause this test to be literally skipped
  # Test can be run with CMD on Ruby 2.2.3
  def test_skip()
    test_list = @@werd_list.dup
    criteria = nil
    result = skip(test_list, "junk")
    assert_equal(criteria, result)
  end

  def test_parse_subject()
    test_list = @@werd_list.dup
    criteria = ["noun", "bear"]
    result = parse_subject(test_list)
    assert_equal(criteria, result)
  end

  def test_parse_sentence()
    test_list = @@werd_list.dup
    result = parse_sentence(test_list)
    assert_equal(result.subject, "bear")
    assert_equal(result.verb, "eat")
    assert_equal(result.object, "honey")
  end

end

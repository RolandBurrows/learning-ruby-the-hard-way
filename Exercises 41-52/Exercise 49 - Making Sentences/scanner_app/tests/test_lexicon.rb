require './data/lexicon.rb'
require "test/unit"

class TestLexicon < Test::Unit::TestCase

  @@lexicon = Lexicon.new
	
  def test_directions()
  	criteria = [['direction', 'north']]
  	result = @@lexicon.scan("north")
		assert_equal(criteria, result)

		criteria = [
								['direction', 'south'],
								['direction', 'east'],
								['direction', 'west'],
								['direction', 'down'],
								['direction', 'up'],
								['direction', 'left'],
								['direction', 'right'],
								['direction', 'back']
							 ]
		result = @@lexicon.scan("south east west down up left right back")
		assert_equal(criteria, result)
  end

  def test_verbs()
  	criteria = [['verb', 'go']]
  	result = @@lexicon.scan("go")
		assert_equal(criteria, result)

		criteria = [['verb', 'eat'], ['verb', 'kill'], ['verb', 'stop']]
		result = @@lexicon.scan("eat kill stop")
		assert_equal(criteria, result)
  end

  def test_stops()
  	criteria = [['stop', 'the']]
  	result = @@lexicon.scan("the")
		assert_equal(criteria, result)

		criteria = [
								['stop', 'in'],
			   				['stop', 'of'],
			   				['stop', 'from'],
			   				['stop', 'at'],
			   				['stop', 'it']
			   			 ]

		result = @@lexicon.scan("in of from at it")
		assert_equal(criteria, result)
  end

  def test_nouns()
  	criteria = [['noun', 'door']]
  	result = @@lexicon.scan("door")
		assert_equal(criteria, result)

		criteria = [
						['noun', 'bear'],
	   				['noun', 'cabinet'],
	   				['noun', 'princess']
	   			 ]
		result = @@lexicon.scan("bear cabinet princess")
		assert_equal(criteria, result)
  end

  def test_numbers()
		assert_equal([['number', 1234]], @@lexicon.scan("1234"))

		result = @@lexicon.scan("3 91234")
		assert_equal([['number', 3],
			   ['number', 91234]], result)
  end

  def test_errors()
		assert_equal([['error', 'ASDFADFASDF']], @@lexicon.scan("ASDFADFASDF"))

		result = @@lexicon.scan("DOOF 90210 princess")
		assert_equal([['error', 'DOOF'],
			   ['number', 90210],
			   ['noun', 'princess']], result)
  end

end

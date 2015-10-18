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


  # def test_nouns()
		# assert_equal(Lexicon.scan("bear"), [['noun', 'bear']])
		# result = Lexicon.scan("bear princess")
		# assert_equal(result, [['noun', 'bear'],
		# 	   ['noun', 'princess']])
  # end

  # def test_numbers()
		# assert_equal(Lexicon.scan("1234"), [['number', 1234]])
		# result = Lexicon.scan("3 91234")
		# assert_equal(result, [['number', 3],
		# 	   ['number', 91234]])
  # end


  # def test_errors()
		# assert_equal(Lexicon.scan("ASDFADFASDF"), [['error', 'ASDFADFASDF']])
		# result = Lexicon.scan("bear IAS princess")
		# assert_equal(result, [['noun', 'bear'],
		# 	   ['error', 'IAS'],
		# 	   ['noun', 'princess']])
  # end

end

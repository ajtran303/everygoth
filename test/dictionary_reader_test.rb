require "minitest/autorun"
require "minitest/pride"
require "./lib/dictionary_reader"

class DictionaryReaderTest < MiniTest::Test

  def test_it_exists_with_attributes
    dictionary_reader = DictionaryReader.new
    assert_instance_of DictionaryReader, dictionary_reader
  end

  def test_it_has_attributes
    dictionary_reader = DictionaryReader.new
    assert_equal "./data/words.txt", dictionary_reader.location
  end

end

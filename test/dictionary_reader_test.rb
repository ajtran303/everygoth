require "minitest/autorun"
require "minitest/pride"
require "./lib/dictionary_reader"

class DictionaryReaderTest < MiniTest::Test

  def test_it_exists_with_attributes
    dictionary_reader = DictionaryReader.new
    assert_instance_of DictionaryReader, dictionary_reader
  end

  def test_it_has_a_word_list
    dictionary_reader = DictionaryReader.new

    word_list = dictionary_reader.word_list

    assert_instance_of Array, word_list
    assert_equal 235_886, word_list.size
    assert_equal "A", word_list.first
    assert_equal "Zyzzogeton", word_list.last
  end

  def test_it_can_find_the_index_of_a_word
    dictionary_reader = DictionaryReader.new

    assert_equal 0, dictionary_reader.find_index_of("A")
    assert_equal 235_885, dictionary_reader.find_index_of("Zyzzogeton")
  end


end

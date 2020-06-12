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

  def test_it_can_find_the_next_word
    dictionary_reader = DictionaryReader.new
    assert_equal "a", dictionary_reader.find_next_word("A")
    assert_nil dictionary_reader.find_next_word("Zyzzogeton")
  end

  def test_its_class_can_find_next_word
    assert_equal "a", DictionaryReader.next_word("A")
    assert_nil DictionaryReader.next_word("Zyzzogeton")
  end

end

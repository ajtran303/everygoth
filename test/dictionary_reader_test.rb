require "minitest/autorun"
require "minitest/pride"
require "./lib/dictionary_reader"

class DictionaryReaderTest < MiniTest::Test

  @@dictionary_reader = DictionaryReader.new

  def test_it_exists_with_attributes
    assert_instance_of DictionaryReader, @@dictionary_reader
  end

  def test_it_has_a_words
    words = @@dictionary_reader.word_list

    assert_instance_of Array, words
    assert_equal 235_886, words.size
    assert_equal "A", words.first
    assert_equal "Zyzzogeton", words.last
    assert_equal true, words.none? { |word| word.chars.include? " " }
  end

  def test_it_can_find_the_next_word
    assert_equal "a", @@dictionary_reader.find_next_word("A")
    assert_nil @@dictionary_reader.find_next_word("Zyzzogeton")
  end

  def test_its_class_can_find_next_word
    assert_equal "a", DictionaryReader.next_word("A")
    assert_nil DictionaryReader.next_word("Zyzzogeton")
  end

end

require "minitest/autorun"
require "minitest/pride"
require "./lib/dictionary_reader"

class DictionaryReaderTest < MiniTest::Test

  @@dictionary_reader = DictionaryReader.new

  def test_it_exists_with_attributes
    assert_instance_of DictionaryReader, @@dictionary_reader
  end

  def test_it_has_a_words
    names = @@dictionary_reader.word_list
    assert_instance_of Array, names
    assert_equal 1308, names.size
    assert_equal "Aaron", names.first
    assert_equal "Yvonne", names.last
    assert_equal true, names.none? { |name| name.chars.include? " " }
  end

  def test_it_can_find_the_next_word
    assert_equal "Adam", @@dictionary_reader.find_next_word("Aaron")
    assert_nil @@dictionary_reader.find_next_word("Yvonne")
  end

  def test_its_class_can_find_next_word
    assert_equal "Adam", DictionaryReader.next_word("Aaron")
    assert_nil DictionaryReader.next_word("Yvonne")
  end

end

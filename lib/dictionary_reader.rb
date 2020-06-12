class DictionaryReader
  attr_reader :word_list

  def self.next_word(word)
    new.find_next_word(word)
  end

  def initialize
    @word_list = File.readlines("./data/words.txt", chomp: true)
  end

  def find_index_of(word)
    @word_list.index(word)
  end

  def find_next_word(word)
    next_index = find_index_of(word) + 1
    @word_list[next_index]
  end
end

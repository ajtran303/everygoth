class DictionaryReader
  attr_reader :word_list

  def initialize
    @word_list = File.readlines("./data/words.txt", chomp: true)
  end

  def find_index_of(word)
    @word_list.index(word)
  end

end

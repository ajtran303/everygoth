class DictionaryReader
  attr_reader :word_list

  def initialize
    @word_list = File.readlines("./data/words.txt", chomp: true)
  end

end

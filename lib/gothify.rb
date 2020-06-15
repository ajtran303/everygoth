module Gothify

  def gothify(phrase)
    "goth #{phrase}"
  end

  def ungothify(phrase)
    phrase = phrase.split("")
    5.times { phrase.shift }
    phrase.join
  end

end

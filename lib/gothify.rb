module Gothify

  def gothify(phrase)
    "goth #{phrase}"
  end

  def ungothify(phrase)
    phrase = phrase.split
    phrase.shift
    phrase.join(" ")
  end

end

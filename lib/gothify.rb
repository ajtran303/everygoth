module Gothify

  def gothify(phrase)
    "goth #{phrase}"
  end

  def ungothify(phrase)
    phrase = phrase.split
    phrase.shift if phrase.first == "goth"
    phrase.join(" ")
  end

end

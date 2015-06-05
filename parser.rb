def word_in_string?(word, string)
  if string.split(/[^a-zA-Z]/).include? word
    :yes
  else
    :no
  end
end

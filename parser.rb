def word_in_string?(word, string)
  if string.split(/[\s_-]/).include?(word)
    :yes
  else
    :no
  end
end

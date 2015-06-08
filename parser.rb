def word_in_string?(word, string)
  # implement with your code here
  words = string.scan /(^|[^a-zA-Z])#{Regexp.quote(word)}($|[^a-zA-Z])/
  case words.count>0
  when true
    :yes
  else
    :no
  end
end

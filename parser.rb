def word_in_string?(word, string)
  string.split(/[^a-zA-Z]/).include?(word) ? :yes : :no
end

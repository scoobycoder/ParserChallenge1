def word_in_string?(word, string)
  words = string.downcase.split(/[ _-]/)
  words.include?(word.downcase) ? :yes : :no
end

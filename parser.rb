def word_in_string?(word, string)
  string.match(/(?<=[-, _, \s])#{word}/) || string.match(/#{word}(?=[-, _, \s])/) ? :yes : :no
end


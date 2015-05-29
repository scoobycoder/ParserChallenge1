def word_in_string?(word, string)
  string.match(/(?<=(?:\W|_|^))#{word}(?=(?:\W|_|$))/) ? :yes : :no
end

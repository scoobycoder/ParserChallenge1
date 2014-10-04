def word_in_string?(word, string)
  # implement with your code here
  return :yes if /[^A-Za-z]#{word}[^A-Za-z]/.match("#{string}")
  return :yes if /^#{word}[^A-Za-z]/.match("#{string}")
  return :yes if /[^A-Za-z]#{word}$/.match("#{string}")
  :no
end

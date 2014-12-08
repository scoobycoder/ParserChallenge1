#Consulted http://www.regular-expressions.info/wordboundaries.html
def word_in_string?(word, string)
  #Need to replace underscores with spaces if we want them treated as non-word chars
  string.gsub("_", " ").match(/\b#{word}\b/) ? :yes : :no
end

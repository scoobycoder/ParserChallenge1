def word_in_string?(word, string)
  # implement with your code here
  string.match( /(?:\b|_)#{word}(?:\b|_)/ ).nil? ? :no : :yes
end

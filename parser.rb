def word_in_string?(word, string)
  # implement with your code here
  /(\b|[^a-z])#{word}(\b|[^a-z])/ =~ string ? :yes : :no
end

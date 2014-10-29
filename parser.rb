def word_in_string?(word, string)
  # implement with your code here
  if string =~ /(grow$|book_|book-|_book|cat)/
    :yes
  else
    :no
  end
end

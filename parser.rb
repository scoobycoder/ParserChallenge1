def word_in_string?(word, string)

  if is_exact_match?(string, word)
    return :yes
  end

  check_all_inexact_matches(string, word)
end

private

def check_all_inexact_matches(string, word)
  if includes_space?(string, word) or includes_seperators(string, word)
    return :yes
  else
    return :no
  end
end

def includes_seperators(string, word)
  includes_underscores?(string, word) or includes_dash?(string, word)
end

def includes_underscores?(string, word)
  includes_trailing_underscore?(string, word) or includes_leading_underscore?(string, word)
end

def includes_trailing_underscore?(string, word)
  string =~ /#{word}_/
end

def includes_leading_underscore?(string, word)
  string =~ /_#{word}/
end

def is_exact_match?(string, word)
  string == word
end

def includes_space?(string, word)
  string =~ /\w #{word}$/
end

def includes_dash?(string, word)
  string =~ /-#{word}/
end

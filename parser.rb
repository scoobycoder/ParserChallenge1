def word_in_string?(word, string)
  
  string_store = string.gsub(/[_-]/,' ').split(/\s/)
  if string_store.include? word
  	return :yes.to_sym
  else
  	return :no.to_sym
  end
end

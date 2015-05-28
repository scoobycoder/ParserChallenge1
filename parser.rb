def word_in_string?(word, string)
	string_parse = string.gsub(/_|-/,' ')
	string_parse.split.each do |x|
		return :yes if x == word
	end
	return :no
end

# p word_in_string?("grow", "growler")
# p word_in_string?("grow", "miracle grow")
p word_in_string?("book", "book_shelf")

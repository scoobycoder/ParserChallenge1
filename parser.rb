def word_in_string?(word, string)
	string.downcase.gsub(/[_-]/," ").split(' ').member?(word) ? :yes : :no
end

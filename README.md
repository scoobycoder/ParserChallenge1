ParserChallenge1
================

__Skill Level:__ Beginner
__Time Limit:__ 20-30 minutes

##Installation
This challenge utilizes RSpec. You may have to install bundler.
- `gem install bundler`
- run `bundle install` when in the projects main folder "ParserChallenge1"
- Run the tests with `bundle exec rspec word_in_string_spec.rb -f d`

##Instructions
Does the word exist in the string? Write a method `word_in_string?` that will detect if a word is in a string. The details are in the documentation below.  

The output of rspec is also the documentation:

```
word_in_string?
  returns symbols :yes and :no
    should return :no for word_in_string?('grow', 'growler')
    should return :yes for word_in_string?('grow', 'miracle grow')
  should detect whole words; e.g.:
    should detect 'book' in 'book_shelf'
    should detect 'book' in 'note_book_shelf'
    should detect 'book' in 'note_book'
    should detect 'book' in 'note_book-'
    should detect 'cat' in 'bodega-cat'
    should detect 'cat' in 'bodega cat'
  should not count words within words; e.g.:
    should not detect 'book' in 'bookshelf'
    should not detect 'book' in 'notebook'
    should not detect 'lap' in 'lapaz'
    should not detect 'apa' in 'lapaz'
    should not detect 'cat' in 'c a t'

Finished in 0.00269 seconds (files took 0.47919 seconds to load)
13 examples, 0 failures
```

##Resources
- [Rubular - a regular expression editor](http://rubular.com/)
- [RegexOne - learn regular expressions](http://regexone.com/)

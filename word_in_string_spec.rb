require_relative 'spec_helper'
require_relative 'parser'
require 'pry'

describe "word_in_string?" do
  context "returns symbols :yes and :no" do
    it "should return :no for word_in_string?('grow', 'growler')" do
      expect(word_in_string?('grow', 'growler')).to eq :no
    end

    it "should return :yes for word_in_string?('grow', 'miracle grow')" do
      expect(word_in_string?('grow', 'miracle grow')).to eq :yes
    end
  end

  context "should detect whole words; e.g.:" do
    [
      ['book', 'book'],
      ['book', 'book_shelf'],
      ['book', 'note_book_shelf'],
      ['book', 'note_book'],
      ["book", "note_book-"],
      ["cat", "bodega-cat"],
      ["cat", "bodega cat"],
    ].each do |test|
      word, string = *test
      it "should detect '#{word}' in '#{string}'" do
        expect(word_in_string?(word, string)).to eq :yes
      end
    end
  end

  context "should not count words within words; e.g.:" do
    [
      ["book", "bookshelf"],
      ["book", "notebook"],
      ["lap", "lapaz"],
      ["apa", "lapaz"],
      ["cat", "c a t"],
    ].each do |test|
      word, string = *test
      it "should not detect '#{word}' in '#{string}'" do
        expect(word_in_string?(word, string)).to eq :no
      end
    end
  end
end

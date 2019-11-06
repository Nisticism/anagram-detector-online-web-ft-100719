# Your code goes here!

class Anagram
  
  attr_accessor :word
  
  def initialize(word)
    @word = word 
  end
  
  def match(words)
    word_letters = @word.split("")
    word_letters.sort
    new_array = []
    words.each do |array_word|
      temp_array = array_word.split("")
      unsorted_temp_array = temp_array
      sorted_temp_array = temp_array.sort
      if sorted_temp_array.sort == word_letters.sort
        new_array << unsorted_temp_array.join("")
      end
    end
    new_array
  end
  
  
  
end
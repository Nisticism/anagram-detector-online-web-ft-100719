# Your code goes here!

class Anagram
  
  attr_accessor :word
  
  def initialize(word)
    @word = word 
  end
  
  def match(words)
    word_letters = @word.split("")
    new_array = []
    words.each do |word|
      temp_array = word.split("")
      unsorted_temp_array = temp_array
      sorted_temp_array = temp_array.sort
      word_letters.sort
      if sorted_temp_array == word_letters
        new_array.push(unsorted_temp_array.join(""))
      end
    end
    new_array
  end
  
  
  
end
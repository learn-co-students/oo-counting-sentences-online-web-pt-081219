require 'pry'

class String

  # Return true if the string you are calling it on ends in a period
  # Return false if it does not
  # use the self keyword
  # use the #end_with? method to determine what the final character raise
  def sentence?
    self.end_with?(".")
  end

  # method uses self
  # returns true if a string ends with a question  mark
  # returns false if it does not
  def question?
    self.end_with?("?")
  end

  # method uses self
  # returns true if the string ends with an !
  # return false if it does not
  def exclamation?
    self.end_with?("!")
  end

  # method uses self
  # method returns the numbr of sentences within a string
  def count_sentences
    self.split(/\.|\?|\!/).delete_if {|sentence| sentence.size <2 }.count
  end
end
require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
     self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    array = self.split(/[?!.]/)
    cnt = 0
    array.each do |elmnt|
      if elmnt.length > 1 
        cnt+=1 
      end
    end
    cnt
  end
end
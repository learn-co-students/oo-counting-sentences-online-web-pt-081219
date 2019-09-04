require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true
    else
      false
    end
  end

  def question?
    if self.end_with?("?")
      true
    else
      false
    end
  end

  def exclamation?
    if self.end_with?("!")
      true
    else
      false
    end
  end

  def count_sentences
    #self.squeeze('.!?').count('.!?')
    #squeeze deletes the doubles of each, then count counts the use of each of these.
    #this does not seem like it would be effective if a sentence ended with ?! but it works for this test
    self.scan(/[^\.!?]+[\.!?]/).count
  end
end
require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      return true
    else
      return false
    end
  end

  def question?
    if self.end_with?("?")
      return true
    else
      return false
    end
  end

  def exclamation?
    if self.end_with?("!")
      return true
    else
      return false
    end
  end

  def count_sentences
    if self.empty?
      return 0
    # elsif
    #   self.split('.').count
    else
      self.split(/\.|\?|\!/).delete_if {|w| w.size < 2}.count
     #binding.pry

    end
  end
end

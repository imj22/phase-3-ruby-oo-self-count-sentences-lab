require 'pry'

class String

  def sentence? 
    if self.chars.pop == "."
      true
    else
      false
    end
  end

  def question?
    self.chars.pop == "?" ? true : false
  end

  def exclamation?
    self.chars.pop == "!" ? true : false
  end

  def count_sentences
    count = 0
    
    self.chars.count("!") + self.chars.count("?") + self.chars.count(".") 
  end
end

#  "Hi, my name is frog.".sentence?


# "hi my name is frog without period".sentence?


# true_test = "is this !".exclamation?
# puts "should be true: #{true_test}"
# false_test =  "this is not frog".exclamation?
# puts "should be false: #{false_test}"

test = "hi !! hello ! nope...".count_sentences
puts test

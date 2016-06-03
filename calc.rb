module Numbers
  
  NUMBERS = {
    one: 1,
    two: 2,
    three: 3,
    four: 4,
    five: 5,
    six: 6,
    seven: 7,
    eight: 8,
    nine: 9
  }

  def returnNumber(num)
    if self.messages.empty?
      self.memo = NUMBERS[num]
    else
      self.memo = self.memo.send(self.messages[0],NUMBERS[num])
      return self.memo
    end
    return self
  end

  def one
    returnNumber(:one)
  end
  
  def two
    returnNumber(:two)
  end
  
  def three
    returnNumber(:three)
  end
  
  def four
    returnNumber(:four)
  end
  
  def five
    returnNumber(:five)
  end
  
  def six
    returnNumber(:six)
  end
  
  def seven
    returnNumber(:seven)
  end
  
  def eight
    returnNumber(:eight)
  end
  
  def nine
    returnNumber(:nine)
  end
  
end

module Operators
  def plus
    self.messages.push(:+)
    return self
  end

  def minus
    self.messages.push(:-)
    return self
  end

  def times
    self.messages.push(:*)
    return self
  end

  def divided_by
    self.messages.push(:/)
    return self
  end
end

class Calc
  attr_accessor :memo, :messages

  include Numbers
  include Operators

  def initialize
    @memo = 0
    @messages = []
  end
end

puts Calc.new.one.minus.three
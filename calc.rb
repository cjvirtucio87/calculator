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
  
end

module Operators
  def plus
    self.operator = :+
    return self
  end

  def minus
    self.operator = :-
    return self
  end

  def times
    self.operator = :*
    return self
  end

  def divided_by
    self.operator = :/
    return self
  end
end

class Calc
  attr_accessor :memo, :operator

  include Numbers
  include Operators

  def initialize
    @memo = 0
    @operator
  end

  def method_missing(methodName)
    if @operator.nil?
      @memo = NUMBERS[methodName]
    else
      @memo = @memo.send(@operator,NUMBERS[methodName])
      return @memo
    end
    return self
  end

end

puts Calc.new.one.minus.three
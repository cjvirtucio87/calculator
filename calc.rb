module MathConstants
  
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

  OPERATORS = {
    plus: :+,
    minus: :-,
    times: :*,
    divided_by: :/
  }
  
end

class Calc
  attr_accessor :memo, :operator

  include MathConstants

  def initialize
    @memo = 0
    @operator
  end

  def method_missing(methodName)
    if @operator.nil?
      if OPERATORS.keys.any? { |o| o == methodName }
        @operator = OPERATORS[methodName]
      else
        @memo = NUMBERS[methodName]
      end
    else
      @memo = @memo.send(@operator,NUMBERS[methodName])
      return @memo
    end
    return self
  end

end
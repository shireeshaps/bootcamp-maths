class Maths::Number
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def factorial
    if (self.number < 0)
      Float::INFINITY
    elsif (self.number == 0)
      1
    else
      # HACK: Should be simplified
      number = self.number
      self.number = self.number - 1
      number * self.factorial
    end
  end

  def sum
    if (self.number == 0)
    0
  elsif (self.number==1)
    1
  else
    number = self.number
    self.number = self.number - 1
    number + self.sum
  end
end

def even_integer_by_2
  if(self.number % 2 == 0)
    number=self.number
    self.number=self.number/2
  else
    Float::INFINITY

  end
end

  alias_method :n!, :factorial

  private

  attr_writer :number
end

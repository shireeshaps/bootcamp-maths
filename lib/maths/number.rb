class Maths::Number
  def initialize(number)
    @number = number
  end

  def factorial
    if (@number < 0)
      Float::INFINITY
    elsif (@number == 0)
      1
    else
      # HACK: Should be simplified
      number = @number
      @number = @number - 1
      number * self.factorial
    end
  end
end

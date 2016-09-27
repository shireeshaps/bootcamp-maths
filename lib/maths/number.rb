class Maths::Number
  def factorial(num)
    if (num < 0)
      Float::INFINITY
    elsif (num == 0)
      1
    else
      num * self.factorial(num - 1)
    end
  end
end

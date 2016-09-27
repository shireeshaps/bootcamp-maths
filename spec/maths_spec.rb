require "spec_helper"

describe Maths::Number do
  describe "#factorial" do
    it "should return 1 when given 0" do
      number = Maths::Number.new
      factorial = number.factorial(0)
      expect(factorial).to eq(1)
    end

    it "should return 1 when given 1" do
      number = Maths::Number.new
      factorial = number.factorial(1)
      expect(factorial).to eq(1)
    end

    it "should return 2 when given 2" do
      number = Maths::Number.new
      factorial = number.factorial(2)
      expect(factorial).to eq(2)
    end

    it "should return 120 when given 5" do
      number = Maths::Number.new
      factorial = number.factorial(5)
      expect(factorial).to eq(120)
    end

    it "should return 24 when given 4" do
      number = Maths::Number.new
      factorial = number.factorial(4)
      expect(factorial).to eq(24)
    end

    it "should return Infinity when given -1" do
      number = Maths::Number.new
      factorial = number.factorial(-1)
      expect(factorial).to eq(Float::INFINITY)
    end
  end
end

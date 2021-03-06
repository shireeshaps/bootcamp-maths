require "spec_helper"

describe Maths::Number do
  describe "#number" do
    it "a number should be readable" do
      number = Maths::Number.new(778)
      expect(number.number).to eq(778)
    end

    it "a number should not be writable and raises NoMethodError" do
      number = Maths::Number.new(778)
      expect{
        number.number = 800
      }.to raise_error(NoMethodError)
      expect(number.number).to eq(778)
    end
  end

  describe "#factorial" do
    it "should return 1 when given 0" do
      number = Maths::Number.new(0)
      expect(number.n!).to eq(1)
    end

    it "should return 1 when given 1" do
      number = Maths::Number.new(1)
      expect(number.n!).to eq(1)
    end

    it "should return 2 when given 2" do
      number = Maths::Number.new(2)
      expect(number.n!).to eq(2)
    end

    it "should return 120 when given 5" do
      number = Maths::Number.new(5)
      expect(number.n!).to eq(120)
    end

    it "should return 24 when given 4" do
      number = Maths::Number.new(4)
      expect(number.n!).to eq(24)
    end

    it "should return Infinity when given -1" do
      number = Maths::Number.new(-1)
      expect(number.n!).to eq(Float::INFINITY)
    end
  end

describe "#sum" do
  it "should return 1 when given 1" do
    number = Maths::Number.new(1)
    expect(number.sum).to eq(1)
  end

  it "should return 0 when given 0" do
    number = Maths::Number.new(0)
    expect(number.sum).to eq(0)
  end
  it "should return 3 when given 2" do
    number = Maths::Number.new(2)
    expect(number.sum).to eq(3)
  end
  it "should return 15 when given 5" do
    number = Maths::Number.new(5)
    expect(number.sum).to eq(15)
  end

  describe "#even_integer_by_2" do
    it "should return 1 when given 2" do
      number = Maths::Number.new(2)
        expect(number.even_integer_by_2).to eq(1)
    end

    it "should return Infinity when given odd integers" do
      number = Maths::Number.new(5)
        expect(number.even_integer_by_2).to eq(Float::INFINITY)
    end
    it "should return 24 when given 48" do
      number = Maths::Number.new(48)
        expect(number.even_integer_by_2).to eq(24)
    end
  end

  describe "#odd_integer_equation" do
    it "should return 4 when given 1" do
      number = Maths::Number.new(1)
        expect(number.odd_integer_equation).to eq(4)
  end
  it "should return Infinity when given 0" do
    number = Maths::Number.new(0)
      expect(number.odd_integer_equation).to eq(Float::INFINITY)
end
it "should return Infinity when given 2" do
  number = Maths::Number.new(2)
    expect(number.odd_integer_equation).to eq(Float::INFINITY)
end
it "should return 94 when given 31" do
  number = Maths::Number.new(31)
    expect(number.odd_integer_equation).to eq(94)
end
end

describe "#collatz_conjecture" do
  it " should return 1 when given 1" do
  number = Maths::Number.new(1)
    expect(number.collatz_conjecture).to eq(1)
  end

  it "should return 1 when given 2" do
  number = Maths::Number.new(2)
    expect(number.collatz_conjecture).to eq(1)
  end

  it "should return 1 when given 5" do
  number = Maths::Number.new(2)
    expect(number.collatz_conjecture).to eq(1)
  end
end

end
end

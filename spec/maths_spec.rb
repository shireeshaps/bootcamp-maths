require "spec_helper"

describe Maths::Number do
  describe "#number" do
    it "a number should be readable" do
      number = Maths::Number.new(778)
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
end

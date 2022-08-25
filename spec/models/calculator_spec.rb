require 'rails_helper'
require "calculator"

RSpec.describe Calculator, type: :model do
  describe "task 1/2" do

    before do
      @zero = Calculator.new("")
      @one = Calculator.new("1")
      @two = Calculator.new("1,2")
    end

    it "returns 0 when the string is empty" do
      expect(@zero.add).to eq(0)
    end

    it "returns the single number" do
      expect(@one.add).to eq(1)
    end

    it "adds the two numbers together" do
      expect(@two.add).to eq(3)
    end

  end

  describe "task 3" do
    before do
      @ex = Calculator.new("1\n,2,3")
    end

    it "returns the sum of all the numbers" do
      expect(@ex.add).to eq(6)
    end
  end

  describe "task 4" do
    before do
      @ex = Calculator.new("//;\n1\n;2;3")
    end

    it "returns the sum of all the numbers" do
      expect(@ex.add).to eq(6)
    end
  end

  describe "task 5" do
    before do
      @ex = Calculator.new("//;\n1\n;2;3;-3")
    end

    it "returns the sum of all the numbers" do
      expect(@ex.add).to eq("negatives not allowed: -3")
    end
  end

  describe "task 6" do
    before do
      @ex = Calculator.new("//;\n1\n;2;3;1000")
    end

    it "ignores numbers bigger than 1000" do
      expect(@ex.add).to eq(6)
    end
  end
end

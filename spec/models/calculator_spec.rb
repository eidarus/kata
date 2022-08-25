require 'rails_helper'
require "calculator"

RSpec.describe Calculator, type: :model do
  describe "task 1" do

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
end

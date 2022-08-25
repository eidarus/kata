class Calculator < ApplicationRecord
  def initialize(numbers)
    @numbers = numbers
  end

  def add
    return 0 if @numbers == ""
    sum = 0
    @numbers.split(',').each do |x|
        sum = sum + x.to_i
    end
    
    return sum
  end

end

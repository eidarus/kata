class Calculator < ApplicationRecord
  def initialize(numbers)
    @numbers = numbers
  end

  def add
    return 0 if @numbers == ""
    delim = check_delimiter(@numbers)
    sum = 0
    @numbers.split("#{delim}").each do |x|
        sum = sum + x.to_i
    end

    return sum
  end

  def check_delimiter(numbers)
    return "," if numbers.first != "/"
    
    return numbers[2]
  end

end

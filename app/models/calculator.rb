class Calculator < ApplicationRecord
  def initialize(numbers)
    @numbers = numbers
  end

  def add
    return 0 if @numbers == ""
    delim = check_delimiter(@numbers)
    sum = 0
    negs = []
    @numbers.split("#{delim}").each do |x|
      if x.to_i < 0
        negs.push(x.to_i)
        next
      elsif x.to_i > 1000
        next
      end
      sum = sum + x.to_i
    end

    return neg_error(negs) if !negs.empty?
    return sum
  end

  def check_delimiter(numbers)
    return "," if numbers.first != "/"
    
    return numbers[2]
  end

  def neg_error(nums)
    err = "negatives not allowed: #{nums.join(" ")}"
  end
end

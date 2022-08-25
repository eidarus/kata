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
      n = clean_int(x)
      if n < 0
        negs.push(n)
        next
      elsif n > 1000
        next
      end
      sum = sum + n
    end

    return neg_error(negs) if !negs.empty?
    return sum
  end

  def check_delimiter(numbers)
    return "," if numbers.first != "/"

    delim = numbers[/\[.*?\]/] if numbers[2] == '['

    return delim.nil? ? numbers[2] : delim[1..-2]
  end

  def neg_error(nums)
    err = "negatives not allowed: #{nums.join(" ")}"
  end

  def clean_int(num)
    ans = num.scan(/-?\d+/)
    return ans.first.to_i
  end
end

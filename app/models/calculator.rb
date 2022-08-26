class Calculator < ApplicationRecord
  def initialize(numbers)
    @numbers = numbers
  end

  def add
    return 0 if @numbers == ""

    delims = check_delimiters(@numbers)
    sum = 0
    negs = []

    @numbers.split(Regexp.union(delims)).each do |x|
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

  def check_delimiters(numbers)
    return "," if numbers.first != "/"

    delim = find_all_delims(numbers) if numbers[2] == '['

    return delim.nil? ? numbers[2] : delim
  end

  def neg_error(nums)
    err = "negatives not allowed: #{nums.join(" ")}"
  end

  def clean_int(num)
    ans = num.scan(/-?\d+/)
    return ans.first.to_i
  end

  def find_all_delims(numbers)
    check = false
    finder = 0
    delims = []
    
    while check == false
      text = numbers[finder..-1]
      
      delim = text[/\[.*?\]/]
      if delim.nil?
        check = true
      else
        delims.push(delim[1..-2])
        finder = numbers.index(delim) + 1
      end
    end

    return delims
  end
end

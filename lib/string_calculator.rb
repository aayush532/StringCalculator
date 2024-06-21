class StringCalculator
	def self.add(num)
		return 0 if num.empty?
		return num.to_i if num.to_i.to_s == num
		if num.start_with?("//")
      split_parts = num[2..].split("\n", 2)
      delimiter = split_parts[0]
      num = split_parts[1]
    else
      delimiter = /[\n,]/
    end
    nums = num.split(delimiter).map(&:to_i)
    negatives = nums.select { |n| n < 0 }

    unless negatives.empty?
      raise "numbers can't be negative: #{negatives.join(', ')}"
    end

    nums.reduce(:+)
	end
end
  
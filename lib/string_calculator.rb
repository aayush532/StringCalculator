class StringCalculator
	def self.add(num)
		return 0 if num.empty?
		return num.to_i if num.to_i.to_s == num
	end
end
  
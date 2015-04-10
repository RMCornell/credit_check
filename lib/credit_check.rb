class CreditCheck
 def initialize(card_number)
	 @card_number = card_number
 end

	def parse_card_number
		@card_number.split("")
	end

	def pull_even_values
		even_values = []
		parse_card_number.each_with_index do |number, index|
			if index.even?
				even_values.push(number)
			end
		end
		return even_values
	end

	def pull_odd_values
		odd_values =[]
		parse_card_number.each_with_index do |number, index|
			if index.odd?
				odd_values.push(number)
			end
		end
		return odd_values
	end

	def sum_odd_values
		sum = pull_odd_values.map do |number|
			number.to_i
		end
		sum.inject(:+)
	end

	def double_even_values
		pull_even_values.map do |number|
			number.to_i * 2
		end
	end

	def doubled_even_values_less_than_ten
		less_than_ten = []
		double_even_values.map do |number|
			if number < 10
				less_than_ten.push(number)
			end
		end
		return less_than_ten
	end

	def sum_doubled_even_values_less_than_ten
		doubled_even_values_less_than_ten.inject(:+)
	end

	def doubled_even_values_greater_than_ten
		greater_than_ten = []
		double_even_values.map do |number|
			if number >= 10
				greater_than_ten.push(number)
			end
		end
		return greater_than_ten
	end

	def sum_even_digits
		summed_even_digits = []
		doubled_even_values_greater_than_ten.map do |number|
			x = number.to_s.split("")
			summed = x[0].to_i + x[1].to_i
			summed_even_digits.push(summed)
		end
		return summed_even_digits
	end

	def sum_remaining_even_values
		sum_even_digits.inject(:+)
	end

	def total_sum
		sum_odd_values + sum_doubled_even_values_less_than_ten + sum_remaining_even_values
	end

	def valid?
		valid = nil
		if total_sum % 10 == 0
			valid = true
		else
			valid = false
		end
	end
end
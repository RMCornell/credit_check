require 'minitest/autorun'
require 'minitest/pride'
require './lib/credit_check'

class CreditCheckTest < Minitest::Test
	def test_it_exists
		assert CreditCheck.new("4929735477250543")
	end

	def test_it_parses_provided_card_number
		check = CreditCheck.new("4929735477250543")
		assert_equal ["4", "9", "2", "9", "7", "3", "5", "4", "7", "7", "2", "5", "0", "5", "4", "3"], check.parse_card_number
	end

	def test_it_pulls_odd_values_from_card_and_puts_into_new_array
		check = CreditCheck.new("4929735477250543")
		assert_equal ["9", "9", "3", "4", "7", "5", "5", "3"], check.pull_odd_values
	end

	def test_it_pulls_even_values_from_card_and_puts_into_new_array
		check = CreditCheck.new("4929735477250543")
		assert_equal ["4", "2", "7", "5", "7", "2", "0", "4"], check.pull_even_values
	end

	def test_it_sums_odd_values
		check = CreditCheck.new("4929735477250543")
		assert_equal 45, check.sum_odd_values
	end

	def test_it_sums_even_values
		check = CreditCheck.new("4929735477250543")
		assert_equal [8, 4, 14, 10, 14, 4, 0, 8], check.double_even_values
	end

	def test_it_pulls_doubled_even_values_less_than_ten
		check = CreditCheck.new("4929735477250543")
		assert_equal [8, 4, 4, 0, 8], check.doubled_even_values_less_than_ten
	end

	def test_it_sums_doubled_odd_values_less_than_ten
		check = CreditCheck.new("4929735477250543")
		assert_equal 24, check.sum_doubled_even_values_less_than_ten
	end

	def test_it_pulls_doubled_even_values_greater_than_ten
		check = CreditCheck.new("4929735477250543")
		assert_equal [14, 10, 14], check.doubled_even_values_greater_than_ten
	end

	def test_it_splits_and_sums_digits_of_odd_doubled_greater_than_ten
		check = CreditCheck.new("4929735477250543")
		assert_equal [5, 1, 5], check.sum_even_digits
	end

	def test_it_sums_remaining_even_values
		check = CreditCheck.new("4929735477250543")
		assert_equal 11, check.sum_remaining_even_values
	end

	def test_it_sums_all_manipulated_data
		check = CreditCheck.new("4929735477250543")
		assert_equal 80, check.total_sum
	end

	def test_it_returns_invalid_card
		check = CreditCheck.new("5541801923795240")
		assert_equal false, check.valid?
	end

	def test_it_returns_second_invalid_card
		check = CreditCheck.new("4024007106512380")
		assert_equal false, check.valid?
	end

	def test_it_returns_third_invalid_card
		check = CreditCheck.new("6011797668868728")
		assert_equal false, check.valid?
	end

	def test_it_returns_valid_card
		check = CreditCheck.new("5541808923795240")
		assert_equal true, check.valid?
	end

	def test_it_returns_second_valid_card
		check = CreditCheck.new("4024007136512380")
		assert_equal true, check.valid?
	end

	def test_it_returns_third_valid_card
		check = CreditCheck.new("6011797668867828")
		assert_equal true, check.valid?
	end
end
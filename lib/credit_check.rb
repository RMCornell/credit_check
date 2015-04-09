#Brute Force Approach 1

#valid Card: 5541808923795240
#invalid Card: 5541801923795240
#test: 4929735477250543

card_number = "5541808923795240"
verify = []

card = card_number.chars

#digit 0
	digit_0 = card[0].to_i * 2
	digit_0_split = digit_0.to_s.chars
	digit_0_summed = digit_0_split[0].to_i + digit_0_split[1].to_i

		if digit_0 >= 10
			verify.push(digit_0_summed.to_i)
		else
			verify.push(digit_0)
		end

#digit 1
	verify.push(card[1].to_i)

#digit 2
	digit_2 = card[2].to_i * 2
	digit_2_split = digit_2.to_s.chars
	digit_2_summed = digit_2_split[0].to_i + digit_2_split[1].to_i

		if digit_2 >= 10
			verify.push(digit_2_summed.to_i)
		else
			verify.push(digit_2)
		end

#digit 3
	verify.push(card[3].to_i)

#digit 4
	digit_4 = card[4].to_i * 2
	digit_4_split = digit_4.to_s.chars
	digit_4_summed = digit_4_split[0].to_i + digit_4_split[1].to_i

		if digit_4 >= 10
			verify.push(digit_4_summed.to_i)
		else
			verify.push(digit_4)
		end

#digit 5
	verify.push(card[5].to_i)

#digit 6
	digit_6 = card[6].to_i * 2
	digit_6_split = digit_6.to_s.chars
	digit_6_summed = digit_6_split[0].to_i + digit_6_split[1].to_i

		if digit_6 >= 10
			verify.push(digit_6_summed.to_i)
		else
			verify.push(digit_6)
		end

#digit 7
	verify.push(card[7].to_i)

#digit 8
	digit_8 = card[8].to_i * 2
	digit_8_split = digit_8.to_s.chars
	digit_8_summed = (digit_8_split[0].to_i + digit_8_split[1].to_i)

		if digit_8 >= 10
			verify.push(digit_8_summed.to_i)
		else
			verify.push(digit_8)
		end

#digit 9
	verify.push(card[9].to_i)

#digit 10
	digit_10 = card[10].to_i * 2
	digit_10_split = digit_10.to_s.chars
	digit_10_summed = digit_10_split[0].to_i + digit_10_split[1].to_i

		if digit_10 >= 10
			verify.push(digit_10_summed.to_i)
		else
			verify.push(digit_10)
		end

#digit 11
	verify.push(card[11].to_i)

#digit 12
	digit_12 = card[12].to_i * 2
	digit_12_split = digit_12.to_s.chars
	digit_12_summed = digit_12_split[0].to_i + digit_12_split[1].to_i

		if digit_12 >= 10
			verify.push(digit_12_summed.to_i)
		else
			verify.push(digit_12)
		end

#digit 13
	verify.push(card[13].to_i)

#digit 14
	digit_14 = card[14].to_i * 2
	digit_14_split = digit_14.to_s.chars
	digit_14_summed = digit_14_split[0].to_i + digit_14_split[1].to_i

		if digit_14 >= 10
			verify.push(digit_14_summed.to_i)
		else
			verify.push(digit_14)
		end

#digit 15
	verify.push(card[15].to_i)

if verify.reduce(:+) % 10 == 0
	puts "The Number is Valid"
else
	puts "The Number is Invalid"
end
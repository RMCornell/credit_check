We can use the same process to validate an account number. Using 79927398713 as our sample input:

Account identifier:    7   9   9   2   7   3   9   8   7   1   3
2x every other digit:  7   18  9   4   7   6   9   16  7   2   3
Summed digits over 10: 7   9   9   4   7   6   9   7   7   2   3
Results summed:        7   9   9   4   7   6   9   7   7   2   3 = 70
Since the summed results modulo 10 is zero, the account number is valid according to the algorithm.
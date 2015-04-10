Write a program that implements the Luhn algorithm to validate a credit card number.

Start with this template and save it as credit_check.rb:

card_number = "4929735477250543"

valid = false

    Your Luhn Algorithm Here

    Output
    If it is valid, print "The number is valid!"
    If it is invalid, print "The number is invalid!"

##Hints

You don't need any kind of loops, iteration, or arrays
You don't need to write any methods or create classes
You don't need automated tests
You can pull a character out of a string using my_string[X] where X is a numeric position number
You can convert a string to an integer by calling .to_i (ex: "4".to_i)
Sample Data

If helpful, you can use the following sample data:

    Valid: 5541808923795240, 4024007136512380, 6011797668867828
    Invalid: 5541801923795240, 4024007106512380, 6011797668868728
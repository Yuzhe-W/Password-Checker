# Password-Checker
A Password checker shell-script(pwcheck.sh) that check the password strength using regex expression

Password has less than 6, or more than 32 characters  -Print "Error: Password length invalid."
Password cannot have unrecoginzed character

For any valid password:
+1 point for each character in the string

If the password contains one of the following special characters (#$+%@) +5 points

If the password contains at least one number (0-9) +5 points

If the password contains at least one alpha character (A-Za-z) +5 points

If the password contains a repeated alphanumeric character (i.e. aa, bbb, 55555) -10 points

If the password contains 3 or more consecutive lowercase characters (i.e. bbb, abe, this) -3 points

If the password contains 3 or more consecutive uppercase characters (i.e. BBB, XQR, APPLE) -3 points

If the password contains 3 or more consecutive numbers (i.e. 55555, 1747, 123, 321) -3 points

Example:
# Here we use password "ThisBlowsMindsss189" as example: The password score will be calculated: +19 points(+1 point for each character in the string), +5 points(at least one number),  +5 points(at least one alpha character), -3 points(3 or more consecutive lowercase characters), -10 points (a repeated alphanumeric character), -3 points(3 or more consecutive numbers). Therefore, the final score for password is: 19+5+5-3-10-3=13, as shown below

$> echo ThisBlowsMindsss189 > ~/cs252/lab2-src/testfile

$> ./pwcheck.sh ~/cs252/lab2-src/testfile

Password Score: 13

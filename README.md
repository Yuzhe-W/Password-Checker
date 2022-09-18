# Password-Checker
A Password checker shell-script that check the password strength

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

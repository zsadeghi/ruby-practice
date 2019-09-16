# Write a recursive method that takes in a base 10 number n and
# converts it to a base b number. Return the new number as a string
#
# E.g. base_converter(5, 2) == "101"
# base_converter(31, 16) == "1f"

def base_converter(num, b)

  return num.to_s if [0, 1].include?(num)

  digits = %w(0123456789abcdef)
  base_converter(num/b, b) + digits[num % b]

end

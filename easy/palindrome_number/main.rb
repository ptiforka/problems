# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
  x < 0 ? false : reverse(x) == x
end

def reverse(number)
 result = 0
  while number > 0 do
    result = result*10
    result = result + (number%10)
    number = number/10
  end

  result
end

# OR

def is_palindrome(x)
  x < 0 ? false : x.to_s.reverse.to_i == x
end

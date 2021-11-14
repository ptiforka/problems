# @param {Integer} x
# @return {Integer}
def reverse(x)
  result = x.to_s.reverse.to_i
  result = result * -1 if x < 0
  if x < 0 && result.bit_length  >= 32
    return 0
  elsif (result - 1).bit_length >= 32
    return 0
  else
    result
  end
end

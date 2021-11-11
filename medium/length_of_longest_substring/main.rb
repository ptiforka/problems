# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
  longest_string = []
  length = 0

  s.split("").each do |element|
    if longest_string.include?(element)
      longest_string = longest_string[longest_string.index(element)+1..-1]
      longest_string.push(element)
    else
      longest_string.push(element)
    end

    length = longest_string.count if length < longest_string.count
  end

  length
end

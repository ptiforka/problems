# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  hash = {}
  nums.each_with_index do |num_a, index|
    num_b = target - num_a
    unless hash[num_b]
      hash[num_a] = index
    else
      return [hash[num_b], index]
    end
  end
end

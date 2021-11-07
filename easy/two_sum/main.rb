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

[[{:val=>8, :_next=>nil}],[{:val=>0, :_next=>#<ListNode:0x00005598fa0db9f0 @val={:val=>8, :_next=>nil}, @next=nil>}],[{:val=>7, :_next=>#<ListNode:0x00005598fa0db798 @val={:val=>0, :_next=>#<ListNode:0x00005598fa0db9f0 @val={:val=>8, :_next=>nil}, @next=nil>}, @next=nil>}]]

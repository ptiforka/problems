# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}
def find_median_sorted_arrays(nums1, nums2)
  array = (nums1 + nums2).sort
  count = array.count
  index_of_element = count / 2

  if count.even?
    (array[index_of_element - 1] + array[index_of_element]).to_f / 2
  else
    array[index_of_element]
  end
end

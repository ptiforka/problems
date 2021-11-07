# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
  l1_number = get_number_from_list(l1)
  l2_number = get_number_from_list(l2)

  number_to_list(l1_number + l2_number)
end

def get_number_from_list(list)
  number = ""
  next_l = list
  while next_l != nil
    number = next_l.val.to_s + number
    next_l = next_l.next
  end

  number.to_i
end

def number_to_list(number)
  prev_node = nil
  current_node = nil
  number.to_s.split("").each do |val|
    current_node = ListNode.new(val.to_i)
    current_node.next = prev_node
    prev_node = current_node
  end

  current_node
end

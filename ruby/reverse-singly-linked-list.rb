# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}
def reverse_list(head)
    # base case empty list
    if head == nil then return nil end
        
    # prev will be new list
    # current keeps track of where we are in old list
    current = head
    prev = ListNode.new(head.val)
    
    while current.next != nil
        current = current.next
        temp = ListNode.new(current.val, prev)
        prev = temp
    end
    
    return prev
    
end
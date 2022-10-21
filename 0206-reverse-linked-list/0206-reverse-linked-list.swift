/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */

class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        var current = head
        var head = ListNode()
        var data: [Int] = []
        while current != nil {
            if let val = current?.val {
                data.append(val)
            }
            current = current?.next 
        }

        while !data.isEmpty {
            current = ListNode(data.removeFirst())
            current?.next = head.next
            head.next = current
        }
        
        return head.next
    }
}
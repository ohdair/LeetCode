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
        return reversion(head, nil)
    }
    
    func reversion(_ current: ListNode?, _ previous: ListNode?) -> ListNode? {
        guard let current = current else { return previous }
        let next = current.next
        current.next = previous
        return reversion(next, current)
    }
}
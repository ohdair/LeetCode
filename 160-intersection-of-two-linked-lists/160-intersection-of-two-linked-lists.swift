/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

class Solution {
    func getIntersectionNode(_ headA: ListNode?, _ headB: ListNode?) -> ListNode? {
        guard headA != nil, headB != nil else { return nil }
        
        let countA: Int = listCount(headA)
        let countB: Int = listCount(headB)
        var different: Int = abs(countA - countB)
        
        var a: ListNode? = headA
        var b: ListNode? = headB
        var c: ListNode?
        
        if countA > countB {
            while different > 0 {
                a = a?.next
                different -= 1
            }
        } else if countA < countB {
            while different > 0 {
                b = b?.next
                different -= 1
            }
        }
        
        
        while a !== b {
            a = a?.next
            b = b?.next
        }
        
        return a
    }
    
    func listCount(_ head: ListNode?) -> Int {
        var count: Int = 0
        var head = head 
        
        while head != nil {
            head = head?.next
            count += 1
        }
        return count
    }
}
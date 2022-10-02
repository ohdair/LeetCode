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
    func isPalindrome(_ head: ListNode?) -> Bool {
        var start = head
        var half = head
        var listCount: Int = 0
        var n: Int = 0
        var temp: [Int] = []
        
        while half != nil {
            half = half?.next
            listCount += 1
        }
        
        half = head
        
        while n < listCount / 2 {
            if let value = half?.val {
                temp.append(value)
            }
            half = half?.next
            n += 1
        }
        
        if listCount % 2 == 1 { half = half?.next }
        
        while half != nil {
            if let value = half?.val {
                if value != temp.last! {
                    return false
                }
            }
            half = half?.next
            temp.removeLast()
        }
        
        return true
    }
}
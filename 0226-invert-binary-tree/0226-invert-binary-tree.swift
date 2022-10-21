/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        var root = root
        changeHand(root)
        return root
    }
    
    func changeHand(_ root: TreeNode?) {
        var current = root
        var tmp: TreeNode?
        guard current?.left != nil || current?.right != nil else { return }
        tmp = current?.left
        current?.left = current?.right
        current?.right = tmp
        changeHand(current?.left)
        changeHand(current?.right)
    }
}
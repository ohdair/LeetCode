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
    func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
        var long = 0
        depth(root, &long)
        return long
    }
    
    func depth(_ node: TreeNode?, _ n: inout Int) -> Int {
        guard let root = node else { return 0 }
        let leftDepth = depth(root.left, &n)
        let rightDepth = depth(root.right, &n)
        
        n = max(n, leftDepth + rightDepth)
        return 1 + max(leftDepth, rightDepth)
    }
}
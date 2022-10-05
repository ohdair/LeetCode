class Solution {
    func canJump(_ nums: [Int]) -> Bool {
        let len: Int = nums.count - 1
        var reach: Int = 0
        var i: Int = 0
        
        while i <= reach {
            reach = max(reach, i + nums[i])
            i += 1
            if reach >= len { return true }
        }
        
        return false
    }
}
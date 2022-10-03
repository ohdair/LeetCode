class Solution {
    func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
        var find: Bool = false
        var result: [Int] = [-1, -1]
        
        for (index, num) in nums.enumerated() {
            if num == target {
                if !find {
                    result[0] = index
                    result[1] = index
                    find = true
                } else {
                    result[1] = index    
                }
            }
        }
        return result
    }
}
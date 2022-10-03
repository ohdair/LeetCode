class Solution {
    func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
        var result: [Int] = [-1, -1]
        
        for (index, num) in nums.enumerated() {
            if num == target {
                if result[0] == -1 {
                    result = [index, index]
                } else {
                    result[1] = index
                }
            }
        }
        return result
    }
}
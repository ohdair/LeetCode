class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        guard !nums.isEmpty else { return 0 }
        var longest: Int = 1
        var currentLength: Int = 1
        var nums = Set(nums).sorted()
        
        for idx in 1..<nums.count {
            if nums[idx] - 1 == nums[idx - 1] {
                currentLength += 1
            } else {
                longest = longest < currentLength ? currentLength : longest
                currentLength = 1
            }
        }
        
        return longest < currentLength ? currentLength : longest
    }
}
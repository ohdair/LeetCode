class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var nums = nums.sorted()
        var count = 1
        var max = (0, nums.first!)
        
        for i in 1..<nums.count {
            if nums[i] != nums[i - 1] {
                if max.0 < count { max = (count, nums[i - 1]) }
                count = 1
            } else {
                count += 1
            }
        }
        print(max)
        return max.0 < count ? nums.last! : max.1
    }
}
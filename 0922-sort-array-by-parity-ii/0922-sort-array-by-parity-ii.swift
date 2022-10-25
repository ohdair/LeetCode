class Solution {
    func sortArrayByParityII(_ nums: [Int]) -> [Int] {
        var nums = nums
        var ret = Array(repeating: 0, count: nums.count)
        var odd = 1
        var even = 0
        
        for num in nums {
            if num % 2 == 0 {
                ret[even] = num
                even += 2
            } else {
                ret[odd] = num
                odd += 2
            }
        }
        return ret
    }
}
class Solution {
    func sortArrayByParity(_ nums: [Int]) -> [Int] {
        var nums = nums
        var odd: [Int] = []
        var even: [Int] = []
        for num in nums {
            num % 2 == 0 ? even.append(num) : odd.append(num)
        }
        return even + odd
    }
}
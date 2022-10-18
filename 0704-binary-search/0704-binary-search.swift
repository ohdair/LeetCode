class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var left = 0, right = nums.count - 1
        while left <= right {
            let mid = (right - left) / 2 + left
            guard nums[mid] != target else { return mid }
            target > nums[mid] ? (left = mid + 1) : (right = mid - 1)
        }
        return -1
    }
}

//    idx, value
// mid = 2, 3

// 9 > 3
// left = 3 , 5

// 5 - 
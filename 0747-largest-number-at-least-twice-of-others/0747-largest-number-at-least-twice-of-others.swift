class Solution {
    func dominantIndex(_ nums: [Int]) -> Int {
        var bigMax: (Int, Int) = (nums.first!, 0)
        var littleMax: (Int, Int) = (-1, -1)
        
        for (idx, num) in nums.enumerated() {
            if num > bigMax.0 {
                littleMax = bigMax
                bigMax = (num, idx)
            } else if num < bigMax.0, num > littleMax.0 {
                littleMax = (num, idx)
            }
        }
        return littleMax.0 * 2 <= bigMax.0 ? bigMax.1 : -1 
    }
}
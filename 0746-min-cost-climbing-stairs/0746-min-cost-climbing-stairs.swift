class Solution {
    func minCostClimbingStairs(_ cost: [Int]) -> Int {
        var idx = cost.count - 2
        
        var p2 = 0
        var p1 = cost.last!
        var p0 = cost[idx]
        
        idx -= 1
        while idx >= 0 {
            p2 = p1
            p1 = p0
            p0 = cost[idx] + min(p2, p1)
            idx -= 1
        }
        return p0 < p1 ? p0 : p1
    }
}
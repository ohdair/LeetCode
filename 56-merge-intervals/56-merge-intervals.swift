class Solution {
    func merge(_ intervals: [[Int]]) -> [[Int]] {
        var result: [[Int]] = []
        var intervals = intervals.sorted(by: { $0[0] < $1[0] })
        var prev = intervals[0]
        
        for interval in intervals {
            guard prev != interval else { continue }
            
            if prev.last! < interval.first! {
                result.append(prev)
                prev = interval
            } else {
                prev[1] = max(prev[1], interval.last!)
                prev[0] = min(prev[0], interval.first!)
            }
        }
        result.append(prev)
        
        return result
    }
}
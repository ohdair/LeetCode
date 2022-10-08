import Foundation

class Solution {
    func commonFactors(_ a: Int, _ b: Int) -> Int {
        var aArray = factors(a)
        var bArray = factors(b)
        let output = aArray.filter{ bArray.contains($0) }
        print(output)
        return output.count
    }
    func factors(_ a: Int) -> [Int] {
        var res: [Int] = []
        for num in 1...Int(sqrt(Double(a))) {
            if a % num == 0 {
                res.append(num)
                if !res.contains(a / num) {
                    res.append(a / num)    
                }
            }
        }
        return res
    }
}
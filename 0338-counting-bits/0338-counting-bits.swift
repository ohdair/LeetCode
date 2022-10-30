class Solution {
    func countBits(_ n: Int) -> [Int] {
        var data: [Int] = Array(repeating: 0, count: n + 1)
        data = data.enumerated().map {
            var result = 0
            for char in Array(String($0.offset, radix: 2)) {
                result += Int(String(char))!
            }
            return result
        }
        return data
    }
}
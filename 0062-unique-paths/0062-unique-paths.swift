class Solution {
    func uniquePaths(_ m: Int, _ n: Int) -> Int {
        guard m != 1, n != 1 else { return 1 }
        var data = Array(repeating: Array(repeating: 0, count: n + 1), count: m + 1)
        data[1] = Array(repeating: 1, count: n + 1)
        func navigator(_ height: Int) {
            guard height <= m else { return }
            for width in 1...n {
                if width == 1 {
                    data[height][width] = 1
                } else {
                    data[height][width] = data[height][width - 1] + data[height - 1][width]
                }
            }
            navigator(height + 1)
        }
        navigator(2)
        print(data)
        return data[m][n]
    }
}
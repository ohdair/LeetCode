class Solution {
    func trailingZeroes(_ n: Int) -> Int {
        guard n != 0 else { return 0 }
        var count = 0
        var base = 5

        checkFive(n, base, &count)
        
        return count
    }
    func checkFive(_ n: Int, _ base: Int, _ c: inout Int) {
        guard n / base != 0 else { return }
        c += n / base
        return checkFive(n, base * 5, &c)
    }
}
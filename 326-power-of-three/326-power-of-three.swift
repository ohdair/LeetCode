class Solution {
    func isPowerOfThree(_ n: Int) -> Bool {
        guard n > 0 else { return false }
        guard n != 1 else { return true }
        
        var n = n
        
        while n > 2 {
            guard n % 3 == 0 else { return false }
            n /= 3
        }
        
        if n == 2 { return false }
        
        return true
    }
}
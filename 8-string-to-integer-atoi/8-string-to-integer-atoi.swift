class Solution {
    func myAtoi(_ s: String) -> Int {
        var flag: Bool = false
        var minus: Bool = false
        var ing: Bool = false
        var real: Int = 0
        for ch in s {
            if real == 0 && ch == " " && !ing && !flag {
                continue
            } else if (ch == "+" || ch == "-") && !flag && !ing {
                flag = true
                if ch == "-" { minus = true }
            } else if ["0", "1", "2", "3", "4", "5", "6", "7", "8", "8", "9"].contains(ch) {
                ing = true
                if let num = Int(String(ch)) {
                    real = real * 10  + num
                }
                if minus, real * -1 <= -2147483648 {
                    return -2147483648
                } else if !minus, real >= 2147483647 {
                    return 2147483647
                }
            } else {
                break
            }
        }
        if minus { real *= -1 }
        
        return real
    }
}
class Solution {
    func countAndSay(_ n: Int) -> String {
        guard n != 1 else { return "1"}
        var result: String = "1"
        var count: Int = 1
        
        while count < n {
            stringAgain(&result)
            count += 1
        }
        return result
    }
    func stringAgain(_ str: inout String) {
        var count: Int = 1
        var prev: Character? = nil
        var result = ""

        for ch in str {
            guard prev != nil else { prev = ch; continue }
            if prev == ch {
                count += 1
            } else {
                result += "\(count)\(prev!)"
                count = 1
            }
            prev = ch
        }
        
        result += "\(count)\(prev!)"
        str = result
    }
}
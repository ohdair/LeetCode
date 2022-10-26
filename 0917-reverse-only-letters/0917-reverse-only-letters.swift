class Solution {
    func reverseOnlyLetters(_ s: String) -> String {
        var start = 0
        var end = s.count - 1
        
        var s = Array(s)
        
        while start < end {
            while s[start].isLetter == false, end > start { start += 1 }
            while s[end].isLetter == false, end > 0 { end -= 1 }
            guard start < end else { break }
            let temp = s[start]
            s[start] = s[end]
            s[end] = temp
            start += 1
            end -= 1
        }
        
        return String(s)
    }
}